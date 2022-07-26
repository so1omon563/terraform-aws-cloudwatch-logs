# CloudWatch Log Destination

Provides a CloudWatch Logs destination resource.

See the [Terraform documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_destination) for more information on the limitations / requirements for using this resource.

## Quick Start

```hcl-terraform
module "log-destination" {
  source = "git::ssh://git@gilligan.pearsondev.com/tf-modules/cloudwatch-logs.git//modules/log-destination?ref=<RELEASE_VERSION>"

  name = "example-application"
  role_arn = <arn_for_role>
  target_arn = <arn_for_target>
}
```

More configuration examples can be found in the [examples](../examples) directory
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
| [aws_cloudwatch_log_destination.destination](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_destination) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_destination_name_override"></a> [destination\_name\_override](#input\_destination\_name\_override) | Used if there is a need to specify a group name outside of the standardized nomenclature. For example, if importing a group that doesn't follow the standard naming formats. | `string` | `null` | no |
| <a name="input_destination_prefix"></a> [destination\_prefix](#input\_destination\_prefix) | Log Group name prefix, will be appended to `var.name` if a value is supplied. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Short, descriptive name of the environment. All resources will be named using this value as a prefix. | `string` | n/a | yes |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | The ARN of an IAM role that grants Amazon CloudWatch Logs permissions to put data into the target. | `string` | n/a | yes |
| <a name="input_target_arn"></a> [target\_arn](#input\_target\_arn) | The ARN of the target Amazon Kinesis stream resource for the destination. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_log_destination"></a> [log\_destination](#output\_log\_destination) | A map of properties for the created CloudWatch Log Destination. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
