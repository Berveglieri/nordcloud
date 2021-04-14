locals {
  required_tags = {
    Name = "${terraform.workspace}-vpc"
    environment = terraform.workspace
  }
  secondary_subnets = {for idx, networks in var.secondary_cidrs: tostring(idx) => networks}
}

resource "aws_vpc" "main-vpc" {
  cidr_block = var.cidr_block
  tags = merge(var.tags, local.required_tags)
  enable_dns_hostnames = var.enable_dns_hostnames
}

resource "aws_vpc_ipv4_cidr_block_association" "main-vpc" {

  for_each = local.secondary_subnets
  cidr_block = each.value
  vpc_id = aws_vpc.main-vpc.id
}

resource "aws_internet_gateway" "vpc-ig" {
  vpc_id = aws_vpc.main-vpc.id
  tags = merge(var.tags, local.required_tags)
}