module "log-destination" {
  source  = "so1omon563/cloudwatch-logs/aws//modules/log-destination"
  version = "1.0.0" # Replace with appropriate version

  name       = "example-application"
  role_arn   = "<arn_for_role>"
  target_arn = "<arn_for_target>"
}
