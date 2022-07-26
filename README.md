# CloudWatch Log Group

Creates a CloudWatch Log Group. Supports all standard options for the CloudWatch Log Group resource.

Also includes submodules for additional CloudWatch Log related resources - log streams and destinations. These are found under the [modules](https://github.com/so1omon563/terraform-aws-cloudwatch-logs/tree/main/modules) directory.

Examples for use can be found under the [examples](https://github.com/so1omon563/terraform-aws-cloudwatch-logs/tree/main/examples) directory.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Auto-generated technical documentation is created using [`terraform-docs`](https://terraform-docs.io/)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
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
| [aws_cloudwatch_log_group.log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_name_override"></a> [group\_name\_override](#input\_group\_name\_override) | Used if there is a need to specify a group name outside of the standardized nomenclature. For example, if importing a group that doesn't follow the standard naming formats. | `string` | `null` | no |
| <a name="input_group_prefix"></a> [group\_prefix](#input\_group\_prefix) | Log Group name prefix, will be appended to `var.name` if a value is supplied. | `string` | `null` | no |
| <a name="input_group_separator"></a> [group\_separator](#input\_group\_separator) | The default separator to use when constructing the group name. AWS traditionally uses `/`. | `string` | `"/"` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Short, descriptive name of the environment. All resources will be named using this value as a prefix. | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire. | `number` | `365` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_log_group"></a> [log\_group](#output\_log\_group) | A map of properties for the created CloudWatch Log Group. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
