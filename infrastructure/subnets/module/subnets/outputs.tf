output "subnet_id" {
  value = [for id in aws_subnet.subnet: id.id]
}

output "subnet_block" {
  value = [for subnet in aws_subnet.subnet: subnet.cidr_block]
}