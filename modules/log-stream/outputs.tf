output "log_stream" {
  value       = { for key, value in aws_cloudwatch_log_stream.stream : key => value }
  description = "A map of properties for the created CloudWatch Log Stream."
}
