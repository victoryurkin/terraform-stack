client_name  = "baseline"
aws_region  = "us-east-1"
environment = "prod"

# API Gateway
name             = "front-end-config"
description      = "Front-end applications config service"
http_method      = "GET"
authorization    = "None"

integration_type = "AWS_PROXY"
integration_uri  = "arn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:502274501376:function:front-end-config/invocations"

status_code         = 200
response_models     = [{ "application/json" = "Empty" }]
response_parameters = [{ "method.response.header.X-Some-Header" = true }]
