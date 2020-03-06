terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"

    workspaces {
      name = "terraform-role"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

# AWS IAM Role and Policy
module "role" {
  source  = "app.terraform.io/victoryurkinpersonal/role/aws"
  version = "1.0.1"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # Role
  role_name   = var.role_name
  service     = var.service
  policy_name = var.policy_name
  statements  = var.statements
  
}
