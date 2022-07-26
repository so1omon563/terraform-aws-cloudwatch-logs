variable "name" {}
variable "tags" {}

module "kms-key" {
  source  = "so1omon563/kms/aws"
  version = "1.1.2"

  name = "kitchen-test-key"
  tags = var.tags
}
output "kms-key" { value = module.kms-key }

module "log-group" {
  source = "../../../"

  name         = var.name
  tags         = var.tags
  group_prefix = "lg-default"
}
output "log-group" { value = module.log-group }

module "log-group-custom-name" {
  source = "../../../"

  name                = var.name
  tags                = var.tags
  group_name_override = "this-is-my-name-override"
}
output "log-group-custom-name" { value = module.log-group-custom-name }

module "log-group-custom-separator" {
  source = "../../../"

  name            = var.name
  tags            = var.tags
  group_prefix    = "lg-default"
  group_separator = "-"
}
output "log-group-custom-separator" { value = module.log-group-custom-separator }

module "log-group-kms" {
  source = "../../../"

  name       = "kitchen-kms"
  tags       = var.tags
  kms_key_id = module.kms-key.kms.kms_key.kms.arn
}
output "log-group-kms" { value = module.log-group-kms }
