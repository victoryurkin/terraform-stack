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
  version = "1.0.6"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # API Gateway config
  name            = var.name
  description     = var.description
  http_methods    = var.http_methods
  authorizations  = var.authorizations
}