terraform {
  backend "remote" {
    organization = "victoryurkinpersonal"

    workspaces {
      name = "terraform-lambda"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

data "archive_file" "lambda_zip_inline" {
  type        = "zip"
  output_path = "/tmp/lambda_zip_inline.zip"
  source {
    content  = <<EOF
exports.handler = async (event) => {
    // TODO implement
    const response = {
        statusCode: 200,
        body: JSON.stringify('Hello from Lambda!'),
    };
    return response;
};
EOF
    filename = "index.js"
  }
}

module "lambda" {
  source  = "app.terraform.io/victoryurkinpersonal/lambda/aws"
  version = "1.0.7"

  client_name = var.client_name
  environment = var.environment
  aws_region  = var.aws_region

  function_name = "front-end-config"
  handler       = "index.handler"
  runtime       = "nodejs12.x"
  role          = "test"
}