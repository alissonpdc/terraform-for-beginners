# Outputs one list with all values

output "subnets_id" {
  value = aws_subnet.subnet[*].id
}