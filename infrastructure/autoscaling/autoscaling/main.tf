module "main-app_autoscaling" {
  source = "../_module/autoscaling"

  name = local.name
  desired_capacity = local.desired_capacity
  health_check_type = local.health_check_type
  launch_configuration = var.launch_configuration
  load_balancers = var.load_balancers
  max_size = local.max_size
  min_size = local.min_size
  vpc_zones = var.vpc_zones
}