output "s3_bucket_domain_name" {
  description = "S3 bucket domain name to be used in CloudFront"
  value       = module.s3.this_s3_bucket_bucket_domain_name
}