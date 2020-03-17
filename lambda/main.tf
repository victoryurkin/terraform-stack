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
}

module "lambda" {
  source  = "app.terraform.io/victoryurkinpersonal/lambda/aws"
  version = "1.0.25"

  client_name         = var.organization_name
  aws_region          = var.aws_region
  environment         = var.environment
  provisioning        = var.provisioning
  defcon_level        = var.defcon_level
  propagate_at_launch = var.propagate_at_launch

  function_name = var.function_name
  handler       = var.handler
  runtime       = var.runtime
  environment_variables = {
    "APPLICATION_ID" = data.aws_cloudformation_export.application_id.value
    "CLIENT_ID" = var.appconfig_client_id
  }

  role_name        = var.role_name
  role_policy_name = var.role_policy_name
  role_statements  = file("${path.module}/${var.role_statements}")
}
