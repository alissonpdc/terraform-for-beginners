data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "instance_sg" {
  name        = "instance-${var.ingress_port}-sg"
  description = "Allow inbound traffic on port ${var.ingress_port}"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "SG to EC2"
    from_port   = var.ingress_port
    to_port     = var.ingress_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "instance-${var.ingress_port}-sg"
  }
}