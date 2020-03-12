## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| aws\_region | AWS region | `string` | n/a | yes |
| block\_public\_acls | Do not block public bucket policies | `bool` | n/a | yes |
| bucket\_name | Bucket name | `string` | n/a | yes |
| client\_name | Name of the client | `string` | n/a | yes |
| environment | Environment name | `string` | n/a | yes |
| profile | AWS creds profile | `string` | `"default"` | no |
| restrict\_public\_buckets | Do not restrict public bucket policies | `bool` | n/a | yes |
| security\_bucket | Security bucket name | `string` | n/a | yes |
| shared\_credentials\_file | Shared creds file | `string` | `"$HOME/.aws/credentials"` | no |

## Outputs

| Name | Description |
|------|-------------|
| frontend\_pipelines\_s3\_bucket\_name | S3 bucket name to be used for the front-end deployment pipelines |
