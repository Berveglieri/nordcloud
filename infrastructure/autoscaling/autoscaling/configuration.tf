locals {
  workspaces = {
    production = var.configuration["production"]
    development = var.configuration["development"]
    testing = var.configuration["testing"]
  }

  cfg = local.workspaces[terraform.workspace]

  name = local.cfg["name"]
  max_size = local.cfg["max_size"]
  min_size = local.cfg["min_size"]
  desired_capacity = local.cfg["desired_capacity"]
  health_check_type = local.cfg["health_check_type"]

}