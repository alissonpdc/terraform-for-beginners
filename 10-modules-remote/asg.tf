module "asg" {
  source = "terraform-aws-modules/autoscaling/aws"

  # Autoscaling group
  name = "terraform-asg"

  min_size          = 0
  max_size          = 1
  desired_capacity  = 1
  health_check_type = "EC2"

  # Launch template
  launch_template_name        = "terraform-launch-template"
  launch_template_description = "Launch template created by Terraform"
  update_default_version      = true

  image_id      = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"

  availability_zones = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c"
  ]
}