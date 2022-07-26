locals {
  destination_name = var.destination_name_override != null ? var.destination_name_override : var.destination_prefix == null ? format("%s", var.name) : format("%s-%s", var.name, var.destination_prefix)
}
