# CloudWatch Log Stream

Provides a CloudWatch Log Stream resource.

See the [Terraform documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream) for more information on the limitations / requirements for using this resource.

Examples for use can be found under the [examples](examples) directory.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
# TF-DOCS.md

Auto-generated technical documentation is created using [`terraform-docs`](https://terraform-docs.io/)

Specific use-case documentation and examples should be found in [`README.md`](README.md)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.38 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_stream.stream](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_log_group_name"></a> [log\_group\_name](#input\_log\_group\_name) | The name of the log group under which the log stream is to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Short, descriptive name of the environment. All resources will be named using this value as a prefix. See the [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream#name) for more information on limitations / requirements of the name for this resource. | `string` | n/a | yes |
| <a name="input_stream_name_override"></a> [stream\_name\_override](#input\_stream\_name\_override) | Used if there is a need to specify a stream name outside of the standardized nomenclature. For example, if importing a stream that doesn't follow the standard naming formats. See the [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream#name) for more information on limitations / requirements of the name for this resource. | `string` | `null` | no |
| <a name="input_stream_prefix"></a> [stream\_prefix](#input\_stream\_prefix) | Log Stream name prefix, will be appended to `var.name` if a value is supplied. See the [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream#name) for more information on limitations / requirements of the name for this resource. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_log_stream"></a> [log\_stream](#output\_log\_stream) | A map of properties for the created CloudWatch Log Stream. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
