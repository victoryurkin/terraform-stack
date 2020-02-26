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

variable "log_bucket_domain_name" {
  type        = string
  description = "(Required) - S3 bucket domain name for logs"
}

variable "origins" {
  type        = list
  description = "(Required) - List of origin objects"
}

variable "behaviors" {
  type        = list
  description = "(Required) - List of origin objects"
}
