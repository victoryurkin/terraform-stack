terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"

    workspaces {
      name = "terraform-appconfig"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "ssmdocument" {
  source  = "app.terraform.io/victoryurkinpersonal/ssmdocument/aws"
  version = "1.0.19"
  
  client_name         = var.organization_name
  aws_region          = var.aws_region
  environment         = var.environment
  provisioning        = var.provisioning
  defcon_level        = var.defcon_level
  propagate_at_launch = var.propagate_at_launch
  
  stack_name = var.document_stack_name
  name       = var.document_name
  type       = "ApplicationConfigurationSchema"
  content    = data.local_file.document_schema.content
}

module "appconfig" {
  source  = "app.terraform.io/victoryurkinpersonal/appconfig/aws"
  version = "1.0.44"

  client_name         = var.organization_name
  aws_region          = var.aws_region
  environment         = var.environment
  provisioning        = var.provisioning
  defcon_level        = var.defcon_level
  propagate_at_launch = var.propagate_at_launch

  application_stack_name  = var.application_stack_name
  application_name        = var.application_name
  application_description = var.application_description

  deployment_strategy_stack_name          = var.deployment_strategy_stack_name
  deployment_strategy_name                = var.deployment_strategy_name
  deployment_strategy_description         = var.deployment_strategy_description
  deployment_strategy_growth_type         = var.deployment_strategy_growth_type
  deployment_strategy_growth_factor       = var.deployment_strategy_growth_factor
  deployment_strategy_deployment_duration = var.deployment_strategy_deployment_duration
  deployment_strategy_bake_time           = var.deployment_strategy_bake_time
  deployment_strategy_replicate           = var.deployment_strategy_replicate

  role_name        = var.role_name
  role_policy_name = var.role_policy_name
  role_actions     = var.role_actions
}
