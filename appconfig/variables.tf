########################################################
# Tags
########################################################

variable client_name {
  description = "Name of the client"
}

variable aws_region {
  description = "AWS region"
}

variable environment {
  description = "Environment name"
}

variable shared_credentials_file {
  description = "Shared creds file"
  default     = "$HOME/.aws/credentials"
}

variable profile {
  description = "AWS creds profile"
  default     = "default"
}

########################################################
# AppConfig
########################################################

variable document_schema {
  description = "SSM Document by ApplicationConfigurationSchema type"
  type        = map
  default     = {}
}

variable role {
  description = "Role for AppConfig to get SSM Document"
  type        = map
  default     = {}
}

variable application {
  description = "Application Object"
  type        = map
  default     = {}
}

variable deployment_strategy {
  description = "Deployment Strategy Object"
  type        = map
  default     = {}
}