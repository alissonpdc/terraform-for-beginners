resource "aws_s3_bucket" "demo_tf_bucket" {
  bucket = "alissonpdc-demo-terraform-bucket"
  tags = {
    default     = var.default_tag
    tfvars      = var.tfvars_tag
    auto-tfvars = var.auto_tfvars_tag
  }
}