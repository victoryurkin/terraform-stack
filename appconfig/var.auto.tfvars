aws_region          = "us-east-1"
environment         = "prod"
organization_name   = "aetion"
provisioning        = "terraform"
defcon_level        = 0
propagate_at_launch = true

application_stack_name  = "front-end-config-stack-appconfig-application"
application_name        = "front-end-config"
application_description = "Front-end applications configuration"

deployment_strategy_stack_name          = "front-end-config-stack-appconfig-deployment-strategy"
deployment_strategy_name                = "front-end-config-deployment-strategy"
deployment_strategy_description         = "Deployment strategy for front-end-config application environments"

role_name        = "front-end-config-iam-appconfig-role"
role_policy_name = "front-end-config-iam-appconfig-policy"
role_actions     = ["ssm:GetDocument"]

document_stack_name = "front-end-config-stack-ssm-document-schema"
document_name       = "front-end-config-schema"
