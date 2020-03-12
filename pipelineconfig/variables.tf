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
# CodePipeline
########################################################

variable name {
  type        = string
  description = "(Required) - The name of the pipeline."
}

variable s3_bucket_name {
  type        = string
  description = "(Required) - The location where AWS CodePipeline stores artifacts for a pipeline, such as an S3 bucket."
}

variable git_organization {
  type        = string
  description = "(Required) - Source stage GitHub organization name."
}

variable git_repo {
  type        = string
  description = "(Required) - Source stage GitHub repository name."
}

variable git_branch {
  type        = string
  description = "(Required) - Source stage GitHub branch name."
}

variable deploy_lambda_name {
  type        = string
  description = "(Optional) - Deployment stage Lambda function name."
  default     = ""
}
