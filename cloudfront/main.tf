terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"

    workspaces {
      name = "terraform-cloudfront"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

module "cloudfront" {
  source  = "app.terraform.io/victoryurkinpersonal/cloudfront/aws"
  version = "1.0.33"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # CloudFront distribution config
  aliases                = var.aliases
  log_bucket_domain_name = data.terraform_remote_state.dependencies.outputs.s3_bucket_domain_name

  default_behavior_target_origin_id = "main"
  cache_behavior_viewer_protocol_policy_default = "redirect-to-https"

  origins = [
    {
      domain_name = data.terraform_remote_state.dependencies.outputs.s3_bucket_domain_name
      path        = "/main/1.0.0(1)"
      id          = "main"
    },
    {
      domain_name = data.terraform_remote_state.dependencies.outputs.s3_bucket_domain_name
      path        = ""
      id          = "apps"
    },
    {
      domain_name = var.origin_webapp_domain_name
      path        = ""
      id          = "webapp"
    }
  ]

  ordered_behaviors = [
    {
      path_pattern           = "apps/*"
      target_origin_id       = "apps"
      viewer_protocol_policy = "https-only"
      allowed_methods        = ["GET", "HEAD", "OPTIONS"]
      forward_headers        = ["None"]
    },
    {
      path_pattern           = "aetion-webapp/rest/*"
      target_origin_id       = "webapp"
      viewer_protocol_policy = "https-only"
      allowed_methods        = ["GET", "HEAD", "OPTIONS", "PUT", "POST", "PATCH", "DELETE"]
      forward_headers        = ["*"]
    }
  ]
}