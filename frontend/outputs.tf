output "frontend_cloudfront_domain_name" {
  description = "CloudFront distribution domain name"
  value       = module.cloudfront.cf_domain_name
}

output "frontend_cloudfront_id" {
  description = "CloudFront distribution id"
  value       = module.cloudfront.cf_id
}
