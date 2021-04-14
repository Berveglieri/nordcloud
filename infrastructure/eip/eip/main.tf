module "nat-eip" {
  source = "../module/eip"

  vpc = local.vpc
  tags = local.tags
}