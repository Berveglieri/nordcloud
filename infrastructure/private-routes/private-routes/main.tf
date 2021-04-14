module "public_application_subnet_route" {
  source = "../module/private-routes"

  destination_cidr_block = local.destination_cidr_block
  route_table_id = var.route_table_id
  nat_gateway_id = var.nat_gateway_id
}