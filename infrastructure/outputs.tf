output "vpc_id" {
  value = module.main_vpc.vpc_id
}

output "vpc_arn" {
  value = module.main_vpc.vpc_arn
}

output "vpc_cidr_primary_block" {
  value = module.main_vpc.vpc_cidr_primary_block
}

output "vpc_cidr_secondary_blocks" {
  value = [for subnet in module.main_vpc.vpc_cidr_secondary_blocks: subnet]
}

output "public_application_subnet_cidr" {
  value = [for subnet in module.public_application_subnet.subnet_block: subnet]
}

output "public_application_subnet_ids" {
  value = [for id in module.public_application_subnet.subnet_id: id]
}

output "private_database_subnet_cidr" {
  value = [for subnet in module.private_database_subnet.subnet_block: subnet]
}

output "private_database_subnet_ids" {
  value = [for id in module.private_database_subnet.subnet_id: id]
}

output "internet_gateway_id" {
  value = module.main_vpc.internet_gw_id
}

output "route_table_public_application_id" {
  value = module.route_table_public_application_subnet.route_table_id
}
