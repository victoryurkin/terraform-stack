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
# IAM Role
########################################################

variable role_name {
  description = "(Required) - Role name"
  type        = string
}

variable service {
  description = "(Required) - Role service (e.g. ec2.amazonaws.com)"
  type        = string
}

variable policy_name {
  description = "(Required) - Policy name"
  type        = string
}

variable statements {
  description = "(Required) - List of policy statements"
  type        = list
}
