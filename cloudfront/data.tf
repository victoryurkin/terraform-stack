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
      name = "terraform-appigateway"
    }
  }
}
