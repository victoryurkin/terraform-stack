data "aws_cloudformation_export" "application_id" {
  name = "front-end-config-stack-appconfig-application"
}

data "terraform_remote_state" "dependencies_role" {
  backend = "remote"

  config = {
    organization = "victoryurkinpersonal"
    workspaces = {
      name = "terraform-appconfig"
    }
  }
}
