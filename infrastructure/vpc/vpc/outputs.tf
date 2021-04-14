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

output "internet_gw_id" {
  value = module.main_vpc.internet_gw_id
}