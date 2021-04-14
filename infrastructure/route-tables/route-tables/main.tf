module "main_routes" {
  source = "../module/route-tables"

  tags = local.tags
  vpc_id = var.vpc_id
}