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
# aws ssm create-document --document-type ApplicationConfigurationSchema --name frontend_config_schema --content file://schema.json --region us-west-2
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
  version = "1.0.17"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # AppConfig
  appconfig_environment = merge({application_id = format("%s", data.aws_cloudformation_export.application_id.value)}, var.appconfig_environment)
  configuration_profile = merge({
    application_id = format("%s", data.aws_cloudformation_export.application_id.value)
  }, var.configuration_profile)
}
