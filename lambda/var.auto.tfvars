client_name  = "baseline"
aws_region  = "us-east-1"
environment = "prod"

# Lambda
function_name = "front-end-config"
handler       = "index.handler"
runtime       = "nodejs12.x"

#Role
role_name        = "front-end-config-iam-lambda-role"
role_policy_name = "front-end-config-iam-lambda-policy"
role_statements  = [
    {
      "Action": "appconfig:GetConfiguration",
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:*"
    }
]
