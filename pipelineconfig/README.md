# Aetion AWS CodePipeline for The Front-End Configuration Deployment

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| client\_name | Name of the client. | `string` | n/a | yes |
| environment | The organization environment | `string` | n/a | yes |
| aws\_region | This is the AWS region. | `string` | n/a | yes |
| provisioning | Is it manually provisioned or using terraform? | `string` | n/a | yes |
| defcon\_level | Level of distress! | `number` | n/a | yes |
| propagate\_at\_launch | Propogate at launch | `bool` | n/a | yes |
| role\_name | A name of the role | `string` | n/a | yes |
| role\_policy\_name | A name of the policy | `string` | n/a | yes |
| role\_statements | A list of statements for the policy | `list` | n/a | yes |
| name | The name of the pipeline. | `string` | n/a | yes |
| s3_bucket_name | The location where AWS CodePipeline stores artifacts for a pipeline, such as an S3 bucket. | `string` | n/a | yes |
| git_organization | Source stage GitHub organization name. | `string` | n/a | yes |
| git_repo | Source stage GitHub repository name. | `string` | n/a | yes |
| git_branch | Source stage GitHub branch name. | `string` | n/a | yes |
| deploy_lambda_name | Deployment stage Lambda function name. | `string` |  | no |

## Outputs

No outputs.

