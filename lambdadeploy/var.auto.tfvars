aws_region          = "us-east-1"
environment         = "prod"
organization_name   = "aetion"
provisioning        = "terraform"
defcon_level        = 0
propagate_at_launch = true
function_name       = "front-end-deploy-appconfig"
handler             = "index.handler"
runtime             = "nodejs12.x"
role_name           = "front-end-deploy-appconfig-iam-lambda-role"
role_policy_name    = "front-end-deploy-appconfig-iam-lambda-policy"
role_statements     = [
    {
      "Action": "appconfig:GetConfiguration",
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:*"
    }
]
