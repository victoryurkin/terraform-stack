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

module "apigateway" {
  source  = "app.terraform.io/victoryurkinpersonal/apigateway/aws"
  version = "1.0.1"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # API Gateway config
  name        = var.name
  description = var.description
}