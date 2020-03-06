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
| application\_stack\_name | CloudFormation stack name creating AppConfig Application instance | `string` | n/a | yes |
| application\_name | A name for the AppConfig application | `string` | n/a | yes |
| application\_description | A description of the AppConfig application | `string` |  | no |
| deployment\_strategy\_stack\_name | CloudFormation stack name creating AppConfig Deployment Strategy instance | `string` | n/a | yes |
| deployment\_strategy\_name | A name of the AppConfig Deployment Strategy | `string` | n/a | yes |
| deployment\_strategy\_description | A description of the AppConfig Deployment Strategy | `string` |  | no |
| deployment\_strategy\_growth\_type | The algorithm used to define how percentage grows over time. AWS AppConfig supports the following growth types: LINEAR or EXPONENTIAL | `string` | LINEAR | yes |
| deployment\_strategy\_growth\_factor | The percentage of targets to receive a deployed configuration during each interval. Variable type is string, but the CloudFormation original type is Double. | `string` | 10.0 | no |
| deployment\_strategy\_deployment\_duration | Total amount of time for a deployment to last. Variable type is string, but the CloudFormation original type is Double. | `string` | 1.0 | no |
| deployment\_strategy\_bake\_time | The amount of time AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Variable type is string, but the CloudFormation original type is Double. | `string` | 1.0 | no |
| deployment\_strategy\_replicate | Save the deployment strategy to a Systems Manager (SSM) document. Options: NONE | SSM_DOCUMENT | `string` | NONE | no |
| role\_name | A name of the role | `string` | n/a | yes |
| role\_policy\_name | A name of the policy | `string` | n/a | yes |
| role\_actions | A list of actions for the policy to allow AppCOnfig to access SSM Documents or Parameter Store | `list` | n/a | yes |
| document_stack | CloudFormation stack name creating SSM Document of ApplicationConfigurationSchema type | `string` | n/a | yes |
| document_name | SSM Document schema name | `string` | n/a | yes |

## Outputs

| Name | Description | Type |
|------|-------------|:-----:|
| frontend\_appconfig\_role | Role ARN. | `string` |
