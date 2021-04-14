module "main_vpc" {
  source = "./vpc/vpc"
  configuration = var.vpcs["vpc"]
}