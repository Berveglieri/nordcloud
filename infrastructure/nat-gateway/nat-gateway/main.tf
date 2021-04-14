module "nat-gtw" {
  source = "../module/nat-gateway"

  allocation_id = var.allocation_id
  subnet_id = var.subnet_id
  tags = local.tags
}