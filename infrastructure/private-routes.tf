locals {
  nat_gw_ids = flatten([for subnets, nat_ids in module.nat-gateway-public-application-subnet: [nat_ids]])
  nat_gw_ids_list = [for ids in local.nat_gw_ids:  ids.nat_gateway_id]

}

module "private_database_subnet_route1" {
  source = "./private-routes/private-routes"

  configuration = var.routes["public_routes"]
  route_table_id = module.route_table_private_database_subnet1.route_table_id
  nat_gateway_id = local.nat_gw_ids_list[0]
}

module "private_database_subnet_route2" {
  source = "./private-routes/private-routes"

  configuration = var.routes["public_routes"]
  route_table_id = module.route_table_private_database_subnet2.route_table_id
  nat_gateway_id = local.nat_gw_ids_list[1]
}

module "private_database_subnet_route3" {
  source = "./private-routes/private-routes"

  configuration = var.routes["public_routes"]
  route_table_id = module.route_table_private_database_subnet3.route_table_id
  nat_gateway_id = local.nat_gw_ids_list[2]
}