terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"
    workspaces {
      name = "terraform-pipelines3"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

module "s3" {
  source  = "app.terraform.io/victoryurkinpersonal/s3/aws"
  version = "1.0.0"
  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region
  bucket_name = var.bucket_name
  logging = {
    target_bucket = var.security_bucket
  }
}
