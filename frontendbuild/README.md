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
| name | The projects name. | `string` | n/a | yes |
| buildspec | The build spec declaration to use for this build project's related builds. | `string` | n/a | yes |

## Outputs

| Name | Description | Type |
|------|-------------|:-----:|
| frontend\_codebuild\_project\_name | CodeBuild project name | `string` |
