module "main_app_autoscaling" {
  source = "./autoscaling/autoscaling"

  configuration = var.autoscaling["autoscaling_group"]
  launch_configuration = module.launch_configuration.launch_name
  load_balancers = [module.elb_app.elb_id]
  vpc_zones = local.subnet_set
}