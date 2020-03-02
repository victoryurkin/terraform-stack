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

variable "name" {
  type        = string
  description = "(Required) - API Gateway name"
}

variable "description" {
  type        = string
  description = "(Required) - API Gateway description"
}

variable "path_parts" {
  type        = list
  description = "(Required) - The list of resource paths"
}

variable "http_methods" {
  type        = list
  description = "(Required) - The list of methods"
}