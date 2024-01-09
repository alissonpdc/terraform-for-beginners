resource "aws_vpc" "vpc_provider_default" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "vpc-terraform"
  }
}
resource "aws_vpc" "vpc_provider_1" {
  cidr_block = "10.10.0.0/16"
  provider   = aws.provider_1

  tags = {
    Name = "vpc-terraform"
  }
}
resource "aws_vpc" "vpc_provider_2" {
  cidr_block = "10.10.0.0/16"
  provider   = aws.provider_2

  tags = {
    Name = "vpc-terraform"
  }
}

resource "aws_subnet" "subnet_provider_default" {
  vpc_id     = aws_vpc.vpc_provider_default.id
  cidr_block = "10.10.0.0/24"

  tags = {
    Name = "subnet-terraform"
  }
}
resource "aws_subnet" "subnet_provider_1" {
  vpc_id     = aws_vpc.vpc_provider_1.id
  cidr_block = "10.10.0.0/24"
  provider   = aws.provider_1

  tags = {
    Name = "subnet-terraform"
  }
}
resource "aws_subnet" "subnet_provider_2" {
  vpc_id     = aws_vpc.vpc_provider_2.id
  cidr_block = "10.10.0.0/24"
  provider   = aws.provider_2

  tags = {
    Name = "subnet-terraform"
  }
}