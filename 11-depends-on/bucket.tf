# First bucket to be create
resource "aws_s3_bucket" "demo_tf_bucket_first" {
  bucket = "terraform-for-beginners-demo-bucket-first"
}

# Second bucket will be created after First bucket was created successfuly
resource "aws_s3_bucket" "demo_tf_bucket_second" {
  bucket = "terraform-for-beginners-demo-bucket-second"

  depends_on = [
    aws_s3_bucket.demo_tf_bucket_first
  ]
}

# Third bucket will be created after First and Second bucket were created successfuly
# "aws_s3_bucket.demo_tf_bucket_first" here was not really necessary as Second depends on First
resource "aws_s3_bucket" "demo_tf_bucket_third" {
  bucket = "terraform-for-beginners-demo-bucket-third"

  depends_on = [
    aws_s3_bucket.demo_tf_bucket_first,
    aws_s3_bucket.demo_tf_bucket_second
  ]
}