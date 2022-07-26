module "log-stream" {
  source  = "so1omon563/cloudwatch-logs/aws//modules/log-stream"
  version = "1.0.0" # Replace with appropriate version
  # source = "../..//modules/log-stream"

  name           = "example-application"
  log_group_name = "<name_of_log_group>"
}
