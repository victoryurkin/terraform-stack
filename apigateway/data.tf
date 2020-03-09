data "terraform_remote_state" "dependencies_lambda" {
  backend = "remote"

  config = {
    organization = "victoryurkinpersonal"
    workspaces = {
      name = "terraform-lambda"
    }
  }
}
