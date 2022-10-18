# Basic Usage

Basic usage example.

Example shows using Default Tags in the provider as well as passing additional tags into the resource.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Examples

```hcl
provider "aws" {
  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

module "cw_logs" {
  source  = "so1omon563/cloudwatch-logs/aws"
  version = "1.0.0" # Replace with appropriate version

  name = "example-group"
  tags = {
    example = "true"
  }
  group_prefix = "my-product-name"
}
```

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cw_logs"></a> [cw\_logs](#module\_cw\_logs) | so1omon563/cloudwatch-logs/aws | 1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
