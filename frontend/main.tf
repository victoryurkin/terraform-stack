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

module "frontend" {
  source  = "app.terraform.io/victoryurkinpersonal/frontend/aws"
  version = "1.0.4"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # FrontEnd Config
  domain      = var.domain

}
