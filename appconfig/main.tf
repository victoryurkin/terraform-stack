terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"

    workspaces {
      name = "terraform-apigateway"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

module "ssmdocument" {
  source  = "app.terraform.io/victoryurkinpersonal/ssmdocument/aws"
  version = "1.0.17"
  
  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  stack_name = var.document_schema.stack_name
  name       = var.document_schema.name
  type       = var.document_schema.type
  content    = data.local_file.document_schema.content
}

module "appconfig" {
  source  = "app.terraform.io/victoryurkinpersonal/appconfig/aws"
  version = "1.0.26"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  application         = var.application
  deployment_strategy = var.deployment_strategy
}
