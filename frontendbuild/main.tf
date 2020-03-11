terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"
    workspaces {
      name = "terraform-frontendbuild"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "frontendbuild" {
  source              = "app.terraform.io/victoryurkinpersonal/frontendbuild/aws"
  version             = "1.0.0"
  client_name         = var.organization_name
  aws_region          = var.aws_region
  environment         = var.environment
  provisioning        = var.provisioning
  defcon_level        = var.defcon_level
  propagate_at_launch = var.propagate_at_launch
  name                = var.name
  buildspec           = var.buildspec
  role_name           = var.role_name
  role_policy_name    = var.role_policy_name
  role_statements     = var.role_statements
}
