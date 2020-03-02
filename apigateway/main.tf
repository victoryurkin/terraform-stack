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

module "apigateway" {
  source  = "app.terraform.io/victoryurkinpersonal/apigateway/aws"
  version = "1.0.15"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # API Gateway config
  name        = var.name
  description = var.description
  
  # Api Gateway Method
  http_method   = var.http_method
  authorization = var.authorization

  # Api Gateway Integration
  integration_type = var.integration_type
  integration_uri  = var.integration_uri

  # Api Gateway Response
  status_code         = var.status_code
  response_models     = var.response_models
}
