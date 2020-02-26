client_name  = "baseline"
aws_region  = "us-east-1"
environment = "prod"

# Cloudfront
aliases                = []
log_bucket_domain_name = "frontend.us-east-1.victoryurkin.com.s3.amazonaws.com"

origins = [{
    domain_name = "frontend.us-east-1.victoryurkin.com.s3.amazonaws.com"
    path        = "/main/1.0.0(1)"
    id          = "main"
}]

behaviors = {
    default = {
        target_origin_id       = "main"
        viewer_protocol_policy = "redirect-to-https"
    }
    ordered = []
}
