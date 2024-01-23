resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-for-beginners-demo-bucket"

  tags = {
    revision-number = var.revision_number
  }

  # Bucket will be replaced everytime the resource terraform_data 'revision_number' changes
  lifecycle {
    replace_triggered_by = [ terraform_data.revision_number ]
  }
}

# terraform_data 'revision_number' will change everytime that variable 'revision_number' changes
resource "terraform_data" "revision_number" {
  input = var.revision_number
}
