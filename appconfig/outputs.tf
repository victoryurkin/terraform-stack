output "frontend_appconfig_role" {
  description = "Front-end configuration AppConfig application role to access SSM Documents"
  value       = module.role.this_role_arn
}