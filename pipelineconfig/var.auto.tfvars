aws_region            = "us-east-1"
environment           = "prod"
organization_name     = "aetion"
provisioning          = "terraform"
defcon_level          = 0
propagate_at_launch   = true
name                  = "front-end-config-pipeline-prod"
s3_bucket_name        = "v2.pipeline.dev.aetion.com"
git_organization      = "victoryurkin"
git_repo              = "trofi-web"
git_branch            = "master"
git_token             = "a423537122c6bf8fc33480bc86a1c95e2f7654c0"
deploy_lambda_name    = "front-end-config"
deploy_input_artifact = "source_output"
role_name             = "front-end-codepipeline-iam-config-role"
role_policy_name      = "front-end-codepipeline-iam-config-policy"
role_statements       = [
  {
    "Action": [
      "lambda:*"
    ],
    "Effect": "Allow",
    "Resource": "arn:aws:lambda:*"
  },
  {
    "Action": [
      "s3:GetObject*",
      "s3:GetBucketLocation",
      "s3:ListBucket",
      "s3:PutObject*"
    ],
    "Effect": "Allow",
    "Resource": "arn:aws:s3:::*"
  }
]