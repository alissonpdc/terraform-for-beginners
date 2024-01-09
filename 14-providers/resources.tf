module "network" {
  source = "./network"
  providers = {
    # Map each provider on "netowork" module to local providers
    aws.provider_1 = aws.ohio
    aws.provider_2 = aws.oregon
  }

}
resource "aws_instance" "ec2_default" {
  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  subnet_id     = module.network.subnet_provider_default_id

  tags = {
    Name = "ec2-us-east-1"
  }
}

resource "aws_instance" "ec2_ohio" {
  ami           = "ami-0cd3c7f72edd5b06d"
  instance_type = "t2.micro"
  provider      = aws.ohio
  subnet_id     = module.network.subnet_provider_1_id

  tags = {
    Name = "ec2-us-east-2"
  }
}

resource "aws_instance" "ec2_oregon" {
  ami           = "ami-0944e91aed79c721c"
  instance_type = "t2.micro"
  provider      = aws.oregon
  subnet_id     = module.network.subnet_provider_2_id

  tags = {
    Name = "ec2-us-west-2"
  }
}