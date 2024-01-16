resource "aws_s3_bucket" "first_bucket" {
  bucket = "terraform-for-beginners-demo-first-bucket"
}

# Start a 'timer sleep' after first bucket has been provisioned
resource "time_sleep" "sleep_30s" {
  depends_on = [ 
    aws_s3_bucket.first_bucket 
  ]

  # Create: First Bucket => wait 30s => Second Bucket  
  create_duration = "30s"
  # Destroy: First Bucket => wait 60s => Second Bucket
  destroy_duration = "60s"
}

# Create second bucket only after 'timer sleep' has finished
resource "aws_s3_bucket" "second_bucket" {
  depends_on = [ 
    time_sleep.sleep_30s 
  ]
  
  bucket = "terraform-for-beginners-demo-second-bucket"
}