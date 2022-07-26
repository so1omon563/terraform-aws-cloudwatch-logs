resource "aws_cloudwatch_log_group" "log_group" {
  name = local.group_name

  retention_in_days = var.retention_in_days
  kms_key_id         = var.kms_key_id

  tags = merge({ "Name" = local.group_name }, local.tags)

}
