resource "aws_s3_bucket" "demo_tf_bucket" {
  bucket = "alissonpdc-demo-terraform-bucket"
  tags = {
    environment = "development"
  }
}