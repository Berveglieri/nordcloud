module "public_application_subnet_route" {
  source = "../module/public-routes"

  destination_cidr_block = local.destination_cidr_block
  route_table_id = var.route_table_id
  gateway_id = var.gateway_id
}