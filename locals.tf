locals {
  tags       = var.tags

  group_name = var.group_name_override != null ? var.group_name_override : var.group_prefix == null ? format("%s", var.name) : var.group_separator == "/" ? format("%s%s%s%s", var.group_separator, var.name, var.group_separator, var.group_prefix) : format("%s%s%s", var.name, var.group_separator, var.group_prefix)
}
