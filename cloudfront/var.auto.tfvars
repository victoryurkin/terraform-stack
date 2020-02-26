client_name = "baseline"
aws_region  = "us-east-1"
environment = "prod"

# General
aliases                           = ["baseline.aetion.com"]
default_root_object               = "index.html"
price_class                       = "PriceClass_All"

# Origins
origin_domain_name                = "frontend.us-east-1.victoryurkin.com.s3.amazonaws.com"
origin_path                       = "/main/1.0.0(1)"
origin_id                         = "main"

# Behaviors
viewer_protocol_policy            = "redirect-to-https"
origin_protocol_policy            = "match-viewer"
default_ttl                       = "86400"
min_ttl                           = "0"
max_ttl                           = "31536000"
cached_methods                    = ["GET", "HEAD", "OPTIONS"]
allowed_methods                   = ["GET", "HEAD", "OPTIONS"]
