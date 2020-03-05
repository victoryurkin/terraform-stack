client_name  = "baseline"
aws_region  = "us-east-1"
environment = "prod"

document_schema = {
    stack_name = "front-end-config-stack-ssm-document-schema"
    name       = "front-end-config-schema"
    type       = "ApplicationConfigurationSchema"
}

application = {
    stack_name  = "front-end-config-stack-appconfig-application"
    name        = "front-end-config"
    description = "Front-end applications configuration"
}

deployment_strategy = {
    stack_name          = "front-end-config-stack-appconfig-deployment-strategy"
    name                = "front-end-config-deployment-strategy"
    description         = "Deployment strategy for front-end-config application environments"
    growth_type         = "LINEAR"
    growth_factor       = "10.0"
    deployment_duration = "1.0"
    bake_time           = "1.0"
    replicate           = "NONE"

}


        
