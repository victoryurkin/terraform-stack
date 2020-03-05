client_name  = "baseline"
aws_region  = "us-east-1"
environment = "prod"

document = {
    stack_name = "front-end-config-stack-ssm-document-baseline"
    name       = "baseline.aetion.com"
    type       = "ApplicationConfiguration"
    content    = "{}"
}

environment = {
    stack_name  = "front-end-config-stack-appconfig-environment-baseline"
    name        = "baseline.aetion.com"
    description = "AppConfig environment"
}
