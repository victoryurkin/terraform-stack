aws_region          = "us-east-1"
environment         = "prod"
organization_name   = "aetion"
provisioning        = "terraform"
defcon_level        = 0
propagate_at_launch = true
# Lambda
function_name       = "front-end-config"
handler             = "index.handler"
runtime             = "nodejs12.x"
appconfig_client_id = "front-end-config"
#Role
role_name           = "front-end-config-iam-lambda-role"
role_policy_name    = "front-end-config-iam-lambda-policy"
role_statements     = "policy-statements.json"
