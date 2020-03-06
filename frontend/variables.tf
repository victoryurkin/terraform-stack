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

variable document {
  type        = map
  description = "(Optional) - SSM Document"
  default     = {}
}

variable appconfig_environment {
  type        = map
  description = "(Optional) - AppConfig environment"
  default     = {}
}

variable configuration_profile {
  description = "Configuration Profile Object"
  type        = map
  default     = {}
}

########################################################
# CloudFront
########################################################

variable "aliases" {
  type        = list
  description = "(Required) - List of aliases. CAUTION! Names MUSTN'T contain trailing `.`"
}

variable "origin_webapp_domain_name" {
  type        = string
  description = "(Required) - webapp origin domain name"
}
