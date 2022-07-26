output "log_group" {
  value       = { for key, value in aws_cloudwatch_log_group.log_group : key => value }
  description = "A map of properties for the created CloudWatch Log Group."
}
