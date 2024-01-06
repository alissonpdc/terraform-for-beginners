resource "aws_s3_bucket" "demo_tf_bucket_1" {
  bucket = "terraform-for-beginners-demo-bucket-1"
  tags   = local.additional_tags
}

resource "aws_s3_bucket" "demo_tf_bucket_2" {
  bucket = "terraform-for-beginners-demo-bucket-2"
  tags   = local.additional_tags
}

resource "aws_s3_bucket" "demo_tf_bucket_3" {
  bucket = "terraform-for-beginners-demo-bucket-3"
  tags   = local.additional_tags
}