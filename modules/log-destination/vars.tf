variable "name" {
  type        = string
  description = "Short, descriptive name of the environment. All resources will be named using this value as a prefix."
}

variable "destination_prefix" {
  description = "Log Group name prefix, will be appended to `var.name` if a value is supplied."
  type        = string
  default     = null
}

variable "destination_name_override" {
  description = "Used if there is a need to specify a group name outside of the standardized nomenclature. For example, if importing a group that doesn't follow the standard naming formats."
  type        = string
  default     = null
}

variable "role_arn" {
  type = string
  description = "The ARN of an IAM role that grants Amazon CloudWatch Logs permissions to put data into the target."
}

variable "target_arn" {
  type = string
  description = "The ARN of the target Amazon Kinesis stream resource for the destination."
}
