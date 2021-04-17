resource "aws_autoscaling_group" "main_app_autoscaling" {
  name = var.name
  max_size = var.max_size
  min_size = var.min_size
  desired_capacity = var.desired_capacity

  health_check_type = var.health_check_type
  load_balancers = var.load_balancers

  launch_configuration = var.launch_configuration

  vpc_zone_identifier = var.vpc_zones

  lifecycle {
    create_before_destroy = true
  }
}