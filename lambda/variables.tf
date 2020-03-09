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
# Role
########################################################

variable role_name {
  description = "(Required) - A name of the role"
  type        = string
}

variable role_policy_name {
  description = "(Required) - A name of the policy"
  type        = string
}

variable role_statements {
  description = "(Required) - A list of statements for the policy"
  type        = list
}

########################################################
# Lambda
########################################################

variable "function_name" {
  type        = string
  description = "(Required) - Lambda function name"
}

variable "handler" {
  type        = string
  description = "(Required) - The function entrypoint in your code."
}

variable "runtime" {
  type        = string
  description = "(Optionsl) - Runtime value. Example: nodejs12.x"
  default     = "nodejs12.x"
}
