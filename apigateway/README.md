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
| name | A name for the RestApi resource | `string` | n/a | yes |
| description | A description of the RestApi resource | `string` |  | no |
| http\_method | The HTTP method of integration that clients use to call this method | `string` | n/a | yes |
| authorization | The type of integration authorization used for the method (NONE, CUSTOM, AWS_IAM, COGNITO_USER_POOLS) | `string` | NONE | no |
| integration\_type | The integration input's type | `string` | n/a | yes |
| status\_code | The HTTP status code of integration method response | `string` | n/a | yes |
| response\_models | A list of the API models used for the integration method response's content type | `list` | n/a | yes |
| stage\_name | The name of the deployment stage | `string` | n/a | yes |

## Outputs

| Name | Description | Type |
|------|-------------|:-----:|
| frontend_config_api_gateway_invoke_url | The invoke URL attribute of an API Gateway Deployment instance | `string` |
