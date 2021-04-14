locals {
  workspaces = {
    production = var.configuration["production"]
    development = var.configuration["development"]
    testing = var.configuration["testing"]
  }

  cfg = local.workspaces[terraform.workspace]

  allocation_id = var.allocation_id
  subnet_id = var.subnet_id
  tags = local.cfg["tags"]
}