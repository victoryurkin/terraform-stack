terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"
    workspaces {
      name = "terraform-pipelineconfig"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "codepipeline" {
  source                = "app.terraform.io/victoryurkinpersonal/codepipeline/aws"
  version               = "1.0.6"
  client_name           = var.organization_name
  aws_region            = var.aws_region
  environment           = var.environment
  provisioning          = var.provisioning
  defcon_level          = var.defcon_level
  propagate_at_launch   = var.propagate_at_launch
  role_name             = var.role_name
  role_policy_name      = var.role_policy_name
  role_statements       = var.role_statements
  name                  = var.name
  s3_bucket_name        = var.s3_bucket_name
  git_organization      = var.git_organization
  git_repo              = var.git_repo
  git_branch            = var.git_branch
  git_token             = var.git_token
  deploy_lambda_name    = var.deploy_lambda_name
  deploy_input_artifact = var.deploy_input_artifact
}
