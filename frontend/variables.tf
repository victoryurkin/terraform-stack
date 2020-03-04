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
# API Gateway
########################################################

variable "stack_name" {
  type        = string
  description = "(Optional) - Cloudformation stack name"
  default     = ""
}

variable "name" {
  type        = string
  description = "(Required) - Document name"
}

variable "type" {
  type        = string
  description = "(Required) - Document type"
}