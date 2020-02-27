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

variable "origin_webapp_domain_name" {
  type        = string
  description = "(Required) - webapp origin domain name"
}
