client_name  = "baseline"
aws_region  = "us-east-1"
environment = "prod"

# Cloudfront
aliases = []

default_behavior_target_origin_id = "main"
default_behavior_viewer_protocol_policy = "redirect-to-https"

origins = [
    {
        domain_name = "%frontend_s3_bucket%"
        path        = "/main/1.0.0(1)"
        id          = "main"
    },
    {
        domain_name = "%frontend_s3_bucket%"
        id          = "apps"
    },
    {
        domain_name = "baseline.aetion.com"
        id          = "webapp"
    }
]

