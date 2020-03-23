output "frontend_config_api_gateway_invoke_url" {
  description = "Front-end configuration service API Gateway"
  value       = replace(replace(module.apigateway.frontend_config_api_gateway_deployment_invoke_url, "https://", ""), "/config", "")
}

output "frontend_config_api_gateway_lambda_permission_source_arn" {
  description = "Source ARN"
  value       = module.apigateway.frontend_config_api_gateway_lambda_permission_source_arn
}
