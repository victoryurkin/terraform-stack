client_name  = "baseline"
aws_region  = "us-east-1"
environment = "prod"

# Cloudfront
aliases = []

default_behavior_target_origin_id = "main"
default_behavior_viewer_protocol_policy = "redirect-to-https"

origin_main_path          = "/main/1.0.0(1)"
origin_main_id            = "main"
origin_apps_id            = "apps"
origin_webapp_domain_name = "baseline.aetion.com"
origin_webapp_id          = "webapp"
