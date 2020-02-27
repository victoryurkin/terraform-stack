data "terraform_remote_state" "dependencies" {
  backend = "remote"

  config = {
    organization = "victoryurkinpersonal"
    workspaces = {
      name = "terraform-s3"
    }
  }
}
