resource "aws_vpc" "vpc" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "vpc-terraform"
  }
}

# Create "count" (3 in this case) resources with indexes 0,1,2
# subnet-0: 10.10.0.0/24
# subnet-1: 10.10.1.0/24
# subnet-2: 10.10.2.0/24
resource "aws_subnet" "subnet" {
  count = 3

  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.10.${count.index}.0/24"

  tags = {
    Name = "subnet-${count.index}"
  }
}