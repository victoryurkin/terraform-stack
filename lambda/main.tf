terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"

    workspaces {
      name = "terraform-lambda"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

module "lambda" {
  source  = "app.terraform.io/victoryurkinpersonal/lambda/aws"
  version = "1.0.0"

  function_name = "front-end-config"
}