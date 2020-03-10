########################################################
# Tags
########################################################

variable aws_region {
  description = "This is the AWS region."
  type        = string
}

variable environment {
  description = "The organization environment"
  type        = string
}

variable organization_name {
  description = "The organization name"
  type        = string
}

variable provisioning {
  description = "Is it manually provisioned or using terraform?"
  type        = string
}

variable defcon_level {
  description = "Level of distress!"
  type        = number
}

variable propagate_at_launch {
  description = "Propogate at launch"
  type        = bool
}

########################################################
# Client
########################################################

variable environment_name {
  type        = string
  description = "(Required) - Environment name. Example: baseline.aetion.com"
}

variable webapp_domain_name {
  type        = string
  description = "(Required) - Back-end application domain name. Example: baseline-webapp.aetion.com"
}
