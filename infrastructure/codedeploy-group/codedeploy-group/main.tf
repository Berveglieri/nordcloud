module "app_deployment_group" {
  source = "../_module/codedeploy-group"

  app_name = var.app_name
  autoscaling_groups = var.autoscaling_groups
  deployment_group_name = local.deployment_group_name
  deployment_style = local.deployment_type
  load_balancer_name = var.load_balancer_name
  service_role_arn = var.service_role_arn
  trigger_events = local.trigger_events
  trigger_name = local.trigger_name
  trigger_target_arn = var.trigger_target_arn
  deployment_option = local.deployment_option
  action_on_deployment_success = local.action_on_deployment_success
  action_on_provisioning = local.action_on_provisioning
  action_on_timeout = local.action_on_timeout
  termination_wait_time_in_minutes = local.termination_wait_time_in_minutes
  wait_deployment_ready = local.wait_deployment_ready
}