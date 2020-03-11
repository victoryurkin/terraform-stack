aws_region          = "us-east-1"
environment         = "prod"
organization_name   = "aetion"
provisioning        = "terraform"
defcon_level        = 0
propagate_at_launch = true
name      = "front-end-codebuild"
buildspec = "core/aws/buildspec-react.yml"
role_name        = "front-end-codebuild-iam-lambda-role"
role_policy_name = "front-end-codebuild-iam-lambda-policy"
role_statements  = [
  {
    "Action": [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"        
    ],
    "Effect": "Allow",
    "Resource": "arn:aws:logs:*"
  },
  {
    "Action": [
      "s3:GetObject*",
      "s3:GetBucketLocation",
      "s3:ListBucket",
      "s3:PutObject*"
    ],
    "Effect": "Allow",
    "Resource": "arn:aws:s3:*"
  }
]