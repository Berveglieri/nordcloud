locals {
  subnet_set = [for ids in local.subnet_ids: ids]
}

module "elb_app" {
  source = "./elb/elb"

  configuration = var.elbs["elb"]
  security_groups = [module.default-sg.security_group_id]
//  subnets = toset(local.subnet_set)
  subnets = toset(["subnet-03e1f27e1259470cd"])
}

output "subnet_set_id" {
  value = local.subnet_set
}