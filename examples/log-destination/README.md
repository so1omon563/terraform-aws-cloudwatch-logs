# Basic Usage Log Destination

Basic usage example of creating a log destination.

Example shows using Default Tags in the provider as well as passing additional tags into the resource.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Examples

```hcl
module "log-destination" {
  source  = "so1omon563/cloudwatch-logs/aws//modules/log-destination"
  version = "1.0.0" # Replace with appropriate version

  name       = "example-application"
  role_arn   = "<arn_for_role>"
  target_arn = "<arn_for_target>"
}
```

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_log-destination"></a> [log-destination](#module\_log-destination) | so1omon563/cloudwatch-logs/aws//modules/log-destination | 1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
