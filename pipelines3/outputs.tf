output "frontend_pipelines_s3_bucket_name" {
  description = "S3 bucket name to be used for the front-end deployment pipelines"
  value       = module.s3.this_s3_bucket_id
}