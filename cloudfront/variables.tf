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


########################################################
# Origin object
########################################################

variable "origins" {
  type = list(object)
  description = "List of origin objects"
}

variable "default_origin_ssl_protocols" {
  type        = list(string)
  description = "The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS"  
  default     = ["TLSv1", "TLSv1.1", "TLSv1.2"]
}

variable "default_origin_protocol_policy" {
  type        = string
  description = "The origin protocol policy to apply to your origin. One of http-only, https-only, or match-viewer"
  default     = "match-viewer"
}

variable "default_origin_read_timeout" {
  type        = number
  description = "The Custom Read timeout, in seconds. By default, AWS enforces a limit of 60. But you can request an increase."
  default     = 60
}

variable "default_origin_keepalive_timeout" {
  type        = number
  description = "The Custom KeepAlive timeout, in seconds. By default, AWS enforces a limit of 60. But you can request an increase."
  default     = 60
}

variable "default_origin_http_port" {
  type        number
  description = "The HTTP port the custom origin listens on"
  default     = 80
}

variable "default_origin_https_port" {
  type        = number
  description = "The HTTPS port the custom origin listens on"
  default     = 443
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
