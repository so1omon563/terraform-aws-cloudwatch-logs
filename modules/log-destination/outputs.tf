output "log_destination" {
  value       = { for key, value in aws_cloudwatch_log_destination.destination : key => value }
  description = "A map of properties for the created CloudWatch Log Destination."
}
