resource "aws_cloudwatch_log_stream" "stream" {
  name           = local.stream_name
  log_group_name = var.log_group_name
}
