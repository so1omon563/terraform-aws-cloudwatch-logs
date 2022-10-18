# Basic Usage Log Stream

Basic usage example of creating a log stream.

Example shows using Default Tags in the provider as well as passing additional tags into the resource.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Examples

```hcl
module "log-stream" {
  source  = "so1omon563/cloudwatch-logs/aws//modules/log-stream"
  version = "1.0.0" # Replace with appropriate version

  name           = "example-application"
  log_group_name = "<name_of_log_group>"
}
```

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_log-stream"></a> [log-stream](#module\_log-stream) | so1omon563/cloudwatch-logs/aws//modules/log-stream | 1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
