variable client_name {
  description = "Name of the client"
  type        = string
}

variable aws_region {
  description = "AWS region"
  type        = string
}

variable environment {
  description = "Environment name"
  type        = string
}

variable shared_credentials_file {
  description = "Shared creds file"
  type        = string
  default     = "$HOME/.aws/credentials"
}

variable profile {
  description = "AWS creds profile"
  type        = string
  default     = "default"
}

variable bucket_name {
  description = "Bucket name"
  type        = string
}

variable security_bucket {
  description = "Security bucket name"
  type        = string
}

variable block_public_policy {
  description = "Do not block public bucket policies"
  type        = bool
}

variable restrict_public_buckets {
  description = "Do not restrict public bucket policies"
  type        = bool
}
