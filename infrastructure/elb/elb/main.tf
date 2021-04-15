module "elb_app" {
  source = "../_module/elb"

  health_check = local.health_check
  listener = local.listener
  name = local.name
  security_groups = var.security_groups
  subnets = var.subnets
}