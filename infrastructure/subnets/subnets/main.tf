module "subnets" {
  source = "../module/subnets"

  vpc_id = var.vpc_id
  cidr_block = local.cidr_block
  tags = local.tags
  netmask = local.netmask
}
