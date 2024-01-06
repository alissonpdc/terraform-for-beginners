# Outputs will be used on next topic "6-remote-state-data-source"

output "bucket_name" {
  value = aws_s3_bucket.demo_tf_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.demo_tf_bucket.arn
}