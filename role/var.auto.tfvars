client_name  = "baseline"
aws_region  = "us-east-1"
environment = "prod"

role_name   = "front-end-config-iam-appconfig-role"
service     = "ssm.amazonaws.com"
policy_name = "front-end-config-iam-appconfig-policy"
statements  = [
  {
    Actions  = ["ssm:GetDocument"]
    Effect   = "Allow"
    Resource = "arn:aws:ssm:*:*:document/*"
  }
]