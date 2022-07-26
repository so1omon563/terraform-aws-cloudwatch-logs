variable "name" {
  type        = string
  description = "Short, descriptive name of the environment. All resources will be named using this value as a prefix."
}

variable "group_separator" {
  description = "The default separator to use when constructing the group name. AWS traditionally uses `/`."
  type        = string
  default     = "/"
}

variable "group_prefix" {
  description = "Log Group name prefix, will be appended to `var.name` if a value is supplied."
  type        = string
  default     = null
}

variable "group_name_override" {
  description = "Used if there is a need to specify a group name outside of the standardized nomenclature. For example, if importing a group that doesn't follow the standard naming formats."
  type        = string
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider."
  default     = {}
}

variable "retention_in_days" {
  type        = number
  description = "Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire."
  default     = 365
}

variable "kms_key_id" {
  type        = string
  description = "The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested."
  default     = null
}
