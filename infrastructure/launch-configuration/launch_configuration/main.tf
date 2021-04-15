module "launch_configuration" {
  source = "../_module/launch_configuration"
  instance = local.instance
  security_group = var.security_group
}