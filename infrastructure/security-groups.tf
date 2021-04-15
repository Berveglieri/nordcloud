module "default-sg" {
  source = "./security-groups/security_groups"

  configuration = var.security_groups["security_groups"]
  vpc_id = module.main_vpc.vpc_id

}