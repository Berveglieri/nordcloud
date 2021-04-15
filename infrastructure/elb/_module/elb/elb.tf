resource "aws_elb" "app_elb" {
  name = var.name
  security_groups = var.security_groups
  subnets = var.subnets
  cross_zone_load_balancing = false

  dynamic "health_check" {
    for_each = var.health_check
    content {
      healthy_threshold = health_check.value.healthy_threshold
      interval = health_check.value.interval
      target = health_check.value.target
      timeout = health_check.value.timeout
      unhealthy_threshold = health_check.value.timeout
    }
  }

  dynamic "listener" {
    for_each = var.listener
    content {
      instance_port = listener.value.instance_port
      instance_protocol = listener.value.instance_protocol
      lb_port = listener.value.lb_port
      lb_protocol = listener.value.lb_protocol
    }
  }
}