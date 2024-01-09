# Each bucket created can be referenced by the map(string) key that generate it
output "bucket_frontend_arn" {
  value = aws_s3_bucket.demo_tf_buckets["frontend"].arn
}
output "bucket_backend_arn" {
  value = aws_s3_bucket.demo_tf_buckets["backend"].arn
}
output "bucket_bff_arn" {
  value = aws_s3_bucket.demo_tf_buckets["bff"].arn
}

# Each ec2 created can be referenced by the bucket's map(string) key that generate it
output "ec2_frontend_arn" {
  value = aws_instance.instances["frontend"].arn
}
output "ec2_backend_arn" {
  value = aws_instance.instances["backend"].arn
}
output "ec2_bff_arn" {
  value = aws_instance.instances["bff"].arn
}