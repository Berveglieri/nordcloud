locals {
  subnet_ids = {for idx, subnet_ids in module.public_application_subnet.subnet_id: idx => subnet_ids}
}

module "public_route_association" {
  source = "./route-table-association/route-table-association"


  configuration = var.route-tables-association["route-tables"]
  for_each = local.subnet_ids
  subnet_id = each.value
  route_table_id = module.route_table_public_application_subnet.route_table_id
}

module "private_route_association" {
  source = "./route-table-association/route-table-association"
  configuration = var.route-tables-association["private_route_table_1"]
  route_table_id = module.route_table_private_database_subnet1.route_table_id
  subnet_id = module.private_database_subnet.subnet_id[0]
}

module "private_route_association2" {
  source = "./route-table-association/route-table-association"
  configuration = var.route-tables-association["private_route_table_2"]
  route_table_id = module.route_table_private_database_subnet2.route_table_id
  subnet_id = module.private_database_subnet.subnet_id[1]
}

module "private_route_association3" {
  source = "./route-table-association/route-table-association"
  configuration = var.route-tables-association["private_route_table_3"]
  route_table_id = module.route_table_private_database_subnet3.route_table_id
  subnet_id = module.private_database_subnet.subnet_id[2]
}