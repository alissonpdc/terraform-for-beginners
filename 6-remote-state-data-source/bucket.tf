resource "aws_s3_bucket" "demo_tf_bucket" {
  bucket = "terraform-for-beginners-demo-bucket"
  tags = {
    remote-state-bucket-arn  = data.terraform_remote_state.data_source_remote_state.outputs.bucket_arn
    remote-state-bucket-name = data.terraform_remote_state.data_source_remote_state.outputs.bucket_name
  }
}