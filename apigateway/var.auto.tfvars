aws_region          = "us-east-1"
environment         = "prod"
client_name   = "aetion"
provisioning        = "terraform"
defcon_level        = 0
propagate_at_launch = true

# API Gateway
name             = "front-end-config"
description      = "Front-end applications config service"
http_method      = "GET"
authorization    = "None"
integration_type = "AWS_PROXY"
status_code      = 200
response_models  = [{ "application/json" = "Empty" }]
stage_name       = "config"
