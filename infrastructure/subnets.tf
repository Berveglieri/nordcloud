module "public_application_subnet" {
  source = "./subnets/subnets"
  configuration = var.vpc_subnets["public_application_subnet"]
  vpc_id = module.main_vpc.vpc_id
}

module "private_database_subnet" {
  source = "./subnets/subnets"
  configuration = var.vpc_subnets["private_database_subnet"]
  vpc_id = module.main_vpc.vpc_id
}