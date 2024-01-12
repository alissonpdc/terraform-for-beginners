resource "aws_instance" "ec2_instance" {
  # Either create or not the instance based on the 'enable_instance' variable value
  count = var.enable_instance == true ? 1 : 0

  ami = "ami-079db87dc4c10ac91"

  # Set the instance size based on the 'environment' variable value (dev=t2.micro / other=t2.xlarge)
  instance_type = var.environment == "dev" ? "t2.micro" : "t2.xlarge"
}
