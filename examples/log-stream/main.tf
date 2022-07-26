module "log-stream" {
  source = "git::ssh://git@gilligan.pearsondev.com/tf-modules/cloudwatch-logs.git//modules/log-stream?ref=v3.0.0"

  name           = "example-application"
  log_group_name = "<name_of_log_group>"
}
