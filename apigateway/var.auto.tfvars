client_name  = "baseline"
aws_region  = "us-east-1"
environment = "prod"

# API Gateway
name           = "front-end-config"
description    = "Front-end applications config service"
http_methods   = ["GET"]
authorizations = ["None"]