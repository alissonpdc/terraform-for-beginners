resource "aws_s3_bucket" "demo_tf_bucket" {
  bucket = "terraform-for-beginners-demo-bucket"

  lifecycle {
    # After change a parameter that requires recreate the resource (ex. s3 bucket name), terraform will create a new bucket first and then delete the old one
    # default behavior is delete then create
    create_before_destroy = true
    
    # Blocks "terraform destroy"
    # prevent_destroy = true
    prevent_destroy = false

    # Ignore changes made outside terraform on listed parameters (ignore conflicts between terraform states and real infrastructure)
    ignore_changes = [ 
      tags
     ]
  }
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  
  lifecycle {
    # If 'aws_s3_bucket.demo_tf_bucket' were recreated for any reason, trigger a recreation of this resource as well
    replace_triggered_by = [ aws_s3_bucket.demo_tf_bucket ]
  }
}

