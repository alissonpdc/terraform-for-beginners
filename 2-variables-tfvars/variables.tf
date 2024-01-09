variable "default_tag" {
  description = "tag value on the variables.tf default value"
  default     = "default-tag"
  type        = string
}

# Define the environment variable first
# export TF_VAR_envvar_tag="envvar-value"
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

# Defined as argument on terraform command
# terraform plan -var-file vars
variable "file_tag" {
  description = "tag value on the var file"
  default     = "will-be-overwritten"
  type        = string
}