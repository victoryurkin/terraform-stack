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
| environment_name | Environment name. Example: baseline.aetion.com | `string` | n/a | yes |
| webapp_domain_name | Back-end application domain name. Example: baseline-webapp.aetion.com | `string` | n/a | yes |

## Outputs

| Name | Description | Type |
|------|-------------|:-----:|
| frontend\_cloudfront\_domain\_name | CloudFront distribution domain name | `string` |
| frontend\_cloudfront\_id | CloudFront distribution id | `string` |
