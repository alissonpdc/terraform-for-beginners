resource "aws_s3_bucket" "demo_tf_buckets" {

  # For each app in map(string) variable, it will get the key-value pair
  for_each = var.apps

  bucket = each.value
  tags = {
    App = "app-${each.key}"
  }
}


resource "aws_instance" "instances" {

  # For each bucket created at "demo_tf_buckets"
  for_each = aws_s3_bucket.demo_tf_buckets

  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"

  # Name: same "key" as the bucket that this resource references
  # BucketARN & App: "each.value" is the bucket object that this resource references
  tags = {
    Name      = each.key
    BucketARN = each.value.arn
    App       = each.value.tags["App"]
  }
}