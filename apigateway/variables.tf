########################################################
# Tags
########################################################

variable organization_name {
  description = "Name of the organization"
  type        = string
}

variable environment {
  description = "Name of the environment in which the resource is provisioned"
  type        = string
}

variable aws_region {
  description = "(Optional) If specified, the AWS region this bucket should reside in. Otherwise, the region used by the callee."
  type        = string
}

variable provisioning {
  description = "Is it manually provisioned or using terraform?"
  type        = string
  default     = "terraform"
}

variable defcon_level {
  description = "Level of distress!"
  type        = string
  default     = "0"
}

variable propagate_at_launch {
  description = "Propogate at launch"
  type        = bool
  default     = true
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
