output "frontend_appconfig_role" {
  description = "Front-end configuration AppConfig role to access SSM Documents"
  value       = module.role.aws_iam_role.role.arn
}