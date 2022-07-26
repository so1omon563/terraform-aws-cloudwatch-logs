variable "name" {
  type        = string
  description = "Short, descriptive name of the environment. All resources will be named using this value as a prefix. See the [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream#name) for more information on limitations / requirements of the name for this resource."
}

variable "stream_prefix" {
  description = "Log Stream name prefix, will be appended to `var.name` if a value is supplied. See the [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream#name) for more information on limitations / requirements of the name for this resource."
  type        = string
  default     = null
}

variable "stream_name_override" {
  description = "Used if there is a need to specify a stream name outside of the standardized nomenclature. For example, if importing a stream that doesn't follow the standard naming formats. See the [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream#name) for more information on limitations / requirements of the name for this resource."
  type        = string
  default     = null
}

variable "log_group_name" {
  type = string
  description = "The name of the log group under which the log stream is to be created."
}
