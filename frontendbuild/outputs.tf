output "frontend_codebuild_project_name" {
  description = "Front-end CodeBuild project name"
  value       = module.frontendbuild.this_codebuild_project_name
}