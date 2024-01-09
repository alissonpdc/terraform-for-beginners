resource "aws_instance" "ec2_instance" {
  ami           = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  vpc_security_group_ids = [
    module.sec_group_80.sec_group_id,
    module.sec_group_22.sec_group_id
  ]
  tags = {
    Name = "terraform-instance"
  }
}

