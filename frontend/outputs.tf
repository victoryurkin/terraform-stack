output "frontend_config_ssm_document_arn" {
  description = "Front-end configuration SSM document ARN"
  value       = module.ssmdocument.this_ssm_document_arn
}