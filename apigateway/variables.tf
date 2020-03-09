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
  description = "(Required) - API Gateway name."
}

variable "http_method" {
  type        = string
  description = "(Required) - HTTP method"
}

variable "authorization" {
  type        = string
  description = "(Required) - Authorization of HTTP method"
}

variable "integration_type" {
  type        = string
  description = "(Required) - Integration type"
}

variable "status_code" {
  type        = number
  description = "(Required) - Status code"
}

variable "response_models" {
  type        = list
  description = "(Required) - Response models"
}

variable "stage_name" {
  type        = string
  description = "(Required) - Stage name"
}
