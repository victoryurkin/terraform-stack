client_name         = "baseline"
aws_region          = "us-east-1"
environment         = "prod"
provisioning        = "terraform"
defcon_level        = 0
propagate_at_launch = true

/*
    document_stack_name = "front-end-config-stack-ssm-document-baseline"
    document_name       = "baseline.aetion.com"
    document_type       = "ApplicationConfiguration"
    document_content    = "{}"
*/

environment_name   = "baseline.aetion.com"
webapp_domain_name = "baseline-webapp.aetion.com"
