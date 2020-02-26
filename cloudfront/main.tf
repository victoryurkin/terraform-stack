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
  version = "1.0.16"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  # CloudFront distribution config

  # General
  aliases                           = var.aliases
  default_root_object               = var.default_root_object
  price_class                       = var.price_class

  logging_enabled                   = var.logging_enabled
  log_include_cookies               = var.log_include_cookies
  log_bucket_domain_name            = var.log_bucket_domain_name
  log_prefix                        = var.log_prefix

  # Origins
  origins                           = var.origins

  # Behaviors
  viewer_protocol_policy            = var.viewer_protocol_policy
  default_ttl                       = var.default_ttl
  min_ttl                           = var.min_ttl
  max_ttl                           = var.max_ttl
  cached_methods                    = var.cached_methods
  allowed_methods                   = var.allowed_methods
}