terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"

    workspaces {
      name = "terraform-frontend"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

# SSM Document
# CloudFormation is not available yet, use the following command for manual creation
# aws ssm create-document --document-type ApplicationConfiguration --name baseline.aetion.com --content "{\"config\": {}}" --requires Name=front-end-config-schema --profile personal --region us-east-1

/*
module "ssmdocument" {
  source  = "app.terraform.io/victoryurkinpersonal/ssmdocument/aws"
  version = "1.0.17"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # FrontEnd Config
  document = var.document
}
*/

# AWS AppConfig environment
module "appconfig" {
  source  = "app.terraform.io/victoryurkinpersonal/appconfig/aws"
  version = "1.0.36"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # AppConfig
  appconfig_environment = merge({application_id = format("%s", data.aws_cloudformation_export.application_id.value)}, var.appconfig_environment)
  configuration_profile = merge({
    application_id = format("%s", data.aws_cloudformation_export.application_id.value)
  }, var.configuration_profile)
  
}


module "cloudfront" {
  source  = "app.terraform.io/victoryurkinpersonal/cloudfront/aws"
  version = "1.0.34"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # CloudFront distribution config
  aliases                = var.aliases
  log_bucket_domain_name = data.terraform_remote_state.dependencies_s3.outputs.frontend_s3_bucket_domain_name

  default_behavior_target_origin_id = "main"
  cache_behavior_viewer_protocol_policy_default = "redirect-to-https"

  origins = [
    {
      domain_name = data.terraform_remote_state.dependencies_s3.outputs.frontend_s3_bucket_domain_name
      path        = "/main/1.0.0(1)"
      id          = "main"
    },
    {
      domain_name = data.terraform_remote_state.dependencies_s3.outputs.frontend_s3_bucket_domain_name
      path        = ""
      id          = "apps"
    },
    {
      domain_name = var.origin_webapp_domain_name
      path        = ""
      id          = "webapp"
    },
    {
      domain_name = data.terraform_remote_state.dependencies_apigateway.outputs.frontend_config_api_gateway_invoke_url
      path        = ""
      id          = "config"
    }
  ]

  ordered_behaviors = [
    {
      path_pattern           = "apps/*"
      target_origin_id       = "apps"
      viewer_protocol_policy = "https-only"
      allowed_methods        = ["GET", "HEAD", "OPTIONS"]
      forward_headers        = []
      forward_cookies        = "none"
      forward_query_string   = "false"
    },
    {
      path_pattern           = "aetion-webapp/rest/*"
      target_origin_id       = "webapp"
      viewer_protocol_policy = "https-only"
      allowed_methods        = ["GET", "HEAD", "OPTIONS", "PUT", "POST", "PATCH", "DELETE"]
      forward_headers        = ["*"]
      forward_cookies        = "all"
      forward_query_string   = "true"
    },
    {
      path_pattern           = "config"
      target_origin_id       = "config"
      viewer_protocol_policy = "https-only"
      allowed_methods        = ["GET", "HEAD", "OPTIONS"]
      forward_headers        = []
      forward_cookies        = "none"
      forward_query_string   = "false"
    }
  ]
}