module "nat-gateway-1a" {
  source = "./eip/eip"
  configuration = var.elastic_ips["nat_gateway_1a"]
}

module "nat-gateway-1b" {
  source = "./eip/eip"
  configuration = var.elastic_ips["nat_gateway_1b"]
}

module "nat-gateway-1c" {
  source = "./eip/eip"
  configuration = var.elastic_ips["nat_gateway_1c"]
}