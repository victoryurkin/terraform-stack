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

variable "aliases" {
  type        = list
  default     = []
  description = "List of aliases. CAUTION! Names MUSTN'T contain trailing `.`"
}

variable "origins" {
  type = list(object({
    domain_name       = string
    path              = string
    id                = string
    ssl_protocols     = { default = ["TLSv1", "TLSv1.1", "TLSv1.2"] }
    protocol_policy   = { default = "match-viewer" }
    read_timeout      = { default = 60 }
    keepalive_timeout = { default = 60 }
    http_port         = { default = 80 }
    https_port        = { default = 443 }
  }))
}

variable "default_root_object" {
  default     = "index.html"
  description = "Object that CloudFront return when requests the root URL"
}

variable "price_class" {
  default     = "PriceClass_100"
  description = "Price class for this distribution: `PriceClass_All`, `PriceClass_200`, `PriceClass_100`"
}

variable "viewer_protocol_policy" {
  description = "allow-all, redirect-to-https"
  default     = "redirect-to-https"
}

variable "allowed_methods" {
  type        = list
  default     = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
  description = "List of allowed methods (e.g. ` GET, PUT, POST, DELETE, HEAD`) for AWS CloudFront"
}

variable "cached_methods" {
  type        = list
  default     = ["GET", "HEAD"]
  description = "List of cached methods (e.g. ` GET, PUT, POST, DELETE, HEAD`)"
}

variable "default_ttl" {
  default     = "60"
  description = "Default amount of time (in seconds) that an object is in a CloudFront cache"
}

variable "min_ttl" {
  default     = "0"
  description = "Minimum amount of time that you want objects to stay in CloudFront caches"
}

variable "max_ttl" {
  default     = "31536000"
  description = "Maximum amount of time (in seconds) that an object is in a CloudFront cache"
}

variable "logging_enabled" {
  default     = "false"
  description = "Wether logging config enabled"
}

variable "log_include_cookies" {
  default     = "false"
  description = "Include cookies in access logs"
}

variable "log_bucket_domain_name" {
  default     = ""
  description = "S3 bucket domain name for logs"
}

variable "log_prefix" {
  default     = ""
  description = "Path of logs in S3 bucket"
}
