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
# Cloudfront
########################################################

variable "aliases" {
  type        = list
  description = "(Required) - List of aliases. CAUTION! Names MUSTN'T contain trailing `.`"
}

variable "default_behavior_target_origin_id" {
  type        = string
  description = "(Required) - Default behavior target origin id"
}

variable "default_behavior_viewer_protocol_policy" {
  type        = string
  description = "(Required) - Default behavior viewer protocol policy"
}

########################################################
# Origins
########################################################

variable "origin_main_path" {
  type        = string
  description = "(Required) - main origin path"
}

variable "origin_main_id" {
  type        = string
  description = "(Required) - main origin id"
}

variable "origin_apps_id" {
  type        = string
  description = "(Required) - apps origin id"
}

variable "origin_webapp_domain_name" {
  type        = string
  description = "(Required) - webapp origin domain name"
}

variable "origin_webapp_id" {
  type        = string
  description = "(Required) - webapp origin id"
}
