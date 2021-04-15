locals {
  workspaces = {
    production = var.configuration["production"]
    development = var.configuration["development"]
    testing = var.configuration["testing"]
  }

  cfg = local.workspaces[terraform.workspace]

  name = local.cfg["name"]
  health_check = local.cfg["health_check"]
  listener = local.cfg["listener"]
}
