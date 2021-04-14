locals {
  public_application_subnet_ips_list = [module.nat-gateway-1a.eip_nat_id, module.nat-gateway-1b.eip_nat_id, module.nat-gateway-1c.eip_nat_id]
  nat_list = zipmap(module.public_application_subnet.subnet_id, local.public_application_subnet_ips_list)
}

module "nat-gateway-public-application-subnet" {
  source = "./nat-gateway/nat-gateway"

  for_each = local.nat_list
  allocation_id = each.value
  configuration = var.nat_gws["public_application_nat_gw"]
  subnet_id = each.key
}