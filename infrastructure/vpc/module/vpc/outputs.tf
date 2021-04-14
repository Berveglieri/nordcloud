output "vpc_id" {
  value = aws_vpc.main-vpc.id
}

output "vpc_arn" {
  value = aws_vpc.main-vpc.id
}

output "vpc_cidr_primary_block" {
  value = aws_vpc.main-vpc.cidr_block
}

output "vpc_cidr_secondary_blocks" {
  value = [for subnet in aws_vpc_ipv4_cidr_block_association.main-vpc: subnet.cidr_block]
}

output "internet_gw_id" {
  value = aws_internet_gateway.vpc-ig.id
}