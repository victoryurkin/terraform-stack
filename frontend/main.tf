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

module "ssmdocument" {
  source  = "app.terraform.io/victoryurkinpersonal/ssmdocument/aws"
  version = "1.0.14"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # FrontEnd Config
  stack_name = var.stack_name
  name       = var.name
  type       = var.type
  content    = data.local_file.schema.content
}
