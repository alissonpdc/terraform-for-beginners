resource "aws_s3_bucket" "demo_tf_bucket" {
  bucket = "terraform-for-beginners-demo-bucket"
  tags = {
    default     = var.default_tag
    tfvars      = var.tfvars_tag
    auto-tfvars = var.auto_tfvars_tag
    envvar      = var.envvar_tag
    file        = var.file_tag
  }
}