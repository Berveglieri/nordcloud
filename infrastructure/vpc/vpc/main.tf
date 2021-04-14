module "main_vpc" {
  source = "../module/vpc"

  cidr_block = local.cidr_block
  secondary_cidrs = local.secondary_cidrs

}