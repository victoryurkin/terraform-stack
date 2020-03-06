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
# AppConfig
########################################################

# Application

variable application_stack_name {
  description = "(Required) - CloudFormation stack name creating AppConfig Application instance"
  type        = string
}

variable application_name {
  description = "(Required) - A name for the AppConfig application"
  type        = string
}

variable application_description {
  description = "(Optional) - A description of the AppConfig application"
  type        = string
  default     = ""
}

# Deployment Strategy

variable deployment_strategy_stack_name {
  description = "(Required) - CloudFormation stack name creating AppConfig Deployment Strategy instance"
  type        = string
}

variable deployment_strategy_name {
  description = "(Required) - A name of the AppConfig Deployment Strategy"
  type        = string
}

variable deployment_strategy_description {
  description = "(Optional) - A description of the AppConfig Deployment Strategy"
  type        = string
  default     = ""
}

variable deployment_strategy_growth_type {
  description = "(Optional) - The algorithm used to define how percentage grows over time. AWS AppConfig supports the following growth types: LINEAR or EXPONENTIAL"
  type        = string
  default     = "LINEAR"
}

variable deployment_strategy_growth_factor {
  description = "(Optional) - The percentage of targets to receive a deployed configuration during each interval. Variable type is string, but the CloudFormation original type is Double."
  type        = string
  default     = "10.0"
}

variable deployment_strategy_deployment_duration {
  description = "(Optional) - Total amount of time for a deployment to last. Variable type is string, but the CloudFormation original type is Double."
  type        = string
  default     = "1.0"
}

variable deployment_strategy_bake_time {
  description = "(Optional) - The amount of time AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Variable type is string, but the CloudFormation original type is Double."
  type        = string
  default     = "1.0"
}

variable deployment_strategy_replicate {
  description = "(Optional) - Save the deployment strategy to a Systems Manager (SSM) document. Options: NONE | SSM_DOCUMENT"
  type        = string
  default     = "NONE"
}

# Role

variable role_name {
  description = "(Required) - A name of the role"
  type        = string
}

variable role_policy_name {
  description = "(Required) - A name of the policy"
  type        = string
}

variable role_actions {
  description = "(Required) - A list of actions for the policy to allow AppCOnfig to access SSM Documents or Parameter Store"
  type        = list
}

# SSM Document ApplicationConfigurationSchema

variable document_stack_name {
  description = "(Required) - CloudFormation stack name creating SSM Deployment of ApplicationConfigurationSchema"
  type        = string
}

variable document_name {
  description = "(Required) - A name of the SSM DOcument of ApplicationConfigurationSchema"
  type        = string
}

