module "default-sg" {
  source = "../_module/security_groups"

  description = local.description
  egress = local.egress
  ingress = local.ingress
  name = local.name
  vpc_id = var.vpc_id
}