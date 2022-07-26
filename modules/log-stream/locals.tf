locals {
  stream_name = var.stream_name_override != null ? var.stream_name_override : var.stream_prefix == null ? format("%s", var.name) : format("%s-%s", var.name, var.stream_prefix)
}
