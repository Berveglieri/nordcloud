locals {
  workspaces = {
    production = var.configuration["production"]
    development = var.configuration["development"]
    testing = var.configuration["testing"]
  }

  cfg = local.workspaces[terraform.workspace]

  name = local.cfg["name"]
  description = local.cfg["description"]
  ingress = local.cfg["ingress"]
  egress = local.cfg["egress"]
}