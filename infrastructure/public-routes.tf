module "public_application_subnet_routes" {
  source = "./public-routes/public-routes"

  configuration = var.routes["public_routes"]
  route_table_id = module.route_table_public_application_subnet.route_table_id
  gateway_id = module.main_vpc.internet_gw_id

}
