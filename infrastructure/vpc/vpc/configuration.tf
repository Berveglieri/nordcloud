locals {
  workspaces = {
    production = var.configuration["production"]
    development = var.configuration["development"]
    testing = var.configuration["testing"]
  }

  cfg = local.workspaces[terraform.workspace]

  cidr_block =  local.cfg["cidr_block"]
  secondary_cidrs = lookup(local.cfg, "secondary_cidrs", {})
}