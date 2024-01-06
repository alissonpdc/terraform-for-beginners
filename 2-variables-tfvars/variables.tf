variable "default_tag" {
  description = "tag value on the variables.tf default value"
  default     = "default-tag"
  type        = string
}

variable "envvar_tag" {
  description = "tag value on the environment variable"
  default     = "will-be-overwritten"
  type        = string
}

variable "tfvars_tag" {
  description = "tag value on the terraform.tfvars file"
  default     = "will-be-overwritten"
  type        = string
}

variable "auto_tfvars_tag" {
  description = "tag value on the terraform.auto.tfvars file"
  default     = "will-be-overwritten"
  type        = string
}

variable "file_tag" {
  description = "tag value on the var file"
  default     = "will-be-overwritten"
  type        = string
}