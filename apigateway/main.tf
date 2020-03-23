terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"

    workspaces {
      name = "terraform-apigateway"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "apigateway" {
  source  = "app.terraform.io/victoryurkinpersonal/apigateway/aws"
  version = "1.0.35"

  client_name         = var.organization_name
  aws_region          = var.aws_region
  environment         = var.environment
  provisioning        = var.provisioning
  defcon_level        = var.defcon_level
  propagate_at_launch = var.propagate_at_launch

  # API Gateway config
  name        = var.name
  description = var.description
  
  # Api Gateway Method
  http_method   = var.http_method
  authorization = var.authorization

  # Api Gateway Integration
  integration_type = var.integration_type
  integration_uri  = data.terraform_remote_state.dependencies_lambda.outputs.frontend_config_lambda_uri

  # Api Gateway Response
  status_code         = var.status_code
  response_models     = var.response_models

  # Api Gateway Deployment
  stage_name = var.stage_name

  function_name = data.terraform_remote_state.dependencies_lambda.outputs.frontend_config_lambda_name
}
