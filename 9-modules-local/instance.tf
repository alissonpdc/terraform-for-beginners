resource "aws_key_pair" "ec2_key" {
  key_name   = "ec2-key-pair"
  public_key = file("~/.ssh/ec2-key.pub")
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ec2_key.key_name
  vpc_security_group_ids = [
    module.sec_group_80.sec_group_id,
    module.sec_group_22.sec_group_id
  ]
  tags = {
    Name = "terraform-instance"
  }
}

