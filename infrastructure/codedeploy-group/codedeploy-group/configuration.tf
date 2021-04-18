locals {
  workspaces = {
    production = var.configuration["production"]
    development = var.configuration["development"]
    testing = var.configuration["testing"]
  }

  cfg = local.workspaces[terraform.workspace]

  deployment_group_name = local.cfg["deployment_group_name"]
  deployment_type = local.cfg["deployment_type"]
  deployment_option = local.cfg["deployment_option"]
  trigger_name = local.cfg["trigger_name"]
  trigger_events = local.cfg["trigger_events"]
  action_on_timeout = local.cfg["action_on_timeout"]
  action_on_provisioning = local.cfg["action_on_provisioning"]
  action_on_deployment_success = local.cfg["action_on_deployment_success"]
  termination_wait_time_in_minutes = local.cfg["termination_wait_time_in_minutes"]
  wait_deployment_ready= local.cfg["wait_deployment_ready"]

}
