output "subnet_id" {
  value = [for id in module.subnets.subnet_id: id]
}

output "subnet_block" {
  value = [for subnet in module.subnets.subnet_block: subnet]
}