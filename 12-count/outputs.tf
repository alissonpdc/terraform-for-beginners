# Each output must reference an individual index

# arn from subnet-0: 10.10.0.0/24
output "subnet_id_0" {
  value = aws_subnet.subnet[0].arn
}

# arn from subnet-1: 10.10.1.0/24
output "subnet_id_1" {
  value = aws_subnet.subnet[1].arn
}

# arn from subnet-2: 10.10.2.0/24
output "subnet_id_2" {
  value = aws_subnet.subnet[2].arn
}