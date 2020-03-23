output "frontend_config_lambda_uri" {
  description = "Front-end configuration AppConfig application role to access SSM Documents"
  value       = module.lambda.this_function_uri
}

output "frontend_config_lambda_name" {
  description = "Lambda function name"
  value       = module.lambda.this_function_name
}