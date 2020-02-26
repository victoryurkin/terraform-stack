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
    domain_name = {
      type        = string
      description = "(Required) - The DNS domain name of your custom origin (e.g. website)"
    }
    path = {
      type        = string
      description = "(Optional) - An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin"
    }
    id = {
      type        = string
      description = "(Optional) - An optional element, the id of your custom origin"
    }
    ssl_protocols = {
      type        = list
      description = "(Required) - The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS"
      default     = ["TLSv1", "TLSv1.1", "TLSv1.2"]
    }
    protocol_policy = {
      type        = string
      description = "(Required) - The origin protocol policy to apply to your origin. One of http-only, https-only, or match-viewer"
      default     = "match-viewer"
    }
    read_timeout = {
      type        = number
      description = "(Optional) The Custom Read timeout, in seconds. By default, AWS enforces a limit of 60. But you can request an increase."
      default     = "60"
    }
    keepalive_timeout = {
      type        = number
      description = "(Optional) The Custom KeepAlive timeout, in seconds. By default, AWS enforces a limit of 60. But you can request an increase."
      default     = "60"
    }
    http_port = {
      type        = number
      description = "(Required) - The HTTP port the custom origin listens on"
      default     = "80"
    }
    https_port = {
      type        = number
      description = "(Required) - The HTTPS port the custom origin listens on"
      default     = "443"
    }
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
