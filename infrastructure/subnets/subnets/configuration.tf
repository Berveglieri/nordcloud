locals {
  workspaces = {
    production = var.configuration["production"]
    development = var.configuration["development"]
    testing = var.configuration["testing"]
  }

  cfg = local.workspaces[terraform.workspace]

  cidr_block = local.cfg["cidr_block"]
  netmask = local.cfg["netmask"]
  tags = local.cfg["tags"]
}