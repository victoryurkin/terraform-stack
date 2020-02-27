terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"

    workspaces {
      name = "terraform-cloudfront"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

module "cloudfront" {
  source  = "app.terraform.io/victoryurkinpersonal/cloudfront/aws"
  version = "1.0.28"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # CloudFront distribution config
  aliases                = var.aliases
  origins                = var.origins

  default_behavior_target_origin_id = var.default_behavior_target_origin_id
  cache_behavior_viewer_protocol_policy_default = var.default_behavior_viewer_protocol_policy
}