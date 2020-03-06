data "aws_cloudformation_export" "application_id" {
  name = "front-end-config-stack-appconfig-application"
}

data "terraform_remote_state" "dependencies_s3" {
  backend = "remote"

  config = {
    organization = "victoryurkinpersonal"
    workspaces = {
      name = "terraform-s3"
    }
  }
}

data "terraform_remote_state" "dependencies_apigateway" {
  backend = "remote"

  config = {
    organization = "victoryurkinpersonal"
    workspaces = {
      name = "terraform-apigateway"
    }
  }
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
