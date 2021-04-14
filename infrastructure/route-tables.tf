module "route_table_public_application_subnet" {
  source = "./route-tables/route-tables"

  configuration = var.route_tables["route_table_public_application_subnet"]

  vpc_id = module.main_vpc.vpc_id
}

module "route_table_private_database_subnet1" {
  source = "./route-tables/route-tables"

  configuration = var.route_tables["route_table_private_database_subnet1"]

  vpc_id = module.main_vpc.vpc_id
}

module "route_table_private_database_subnet2" {
  source = "./route-tables/route-tables"

  configuration = var.route_tables["route_table_private_database_subnet2"]

  vpc_id = module.main_vpc.vpc_id
}

module "route_table_private_database_subnet3" {
  source = "./route-tables/route-tables"

  configuration = var.route_tables["route_table_private_database_subnet3"]

  vpc_id = module.main_vpc.vpc_id
}