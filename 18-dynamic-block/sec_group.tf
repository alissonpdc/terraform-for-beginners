resource "aws_security_group" "sec_group" {
  name        = "sec_group"
  description = "Allow inbound traffic on ports 22, 80 and 443"

  # Create an ingress rule for each port defined in 'var.ingress_rule'
  dynamic "ingress" {
    for_each = var.ingress_rules

    content {
      # Both forms 'xxx.yyy' or 'xxx["yyy"]' can be used
      description = ingress.value.description
      cidr_blocks = ingress.value["cidr_blocks"]
      from_port   = ingress.key
      to_port     = ingress.key
      protocol    = "tcp"
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
  }

}