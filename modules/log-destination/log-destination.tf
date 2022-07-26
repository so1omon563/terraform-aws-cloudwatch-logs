resource "aws_cloudwatch_log_destination" "destination" {
  name       = local.destination_name
  role_arn   = var.role_arn
  target_arn = var.target_arn
}
