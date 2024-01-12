variable "enable_instance" {
  description = "Boolean flag to either enable or disable the ec2 creation"
  type        = bool
  default     = false
}

variable "environment" {
  description = "App environment"
  type        = string
  default     = "dev"
}