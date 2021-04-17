module "launch_configuration" {
  source = "../_module/launch_configuration"
  instance = local.instance
  security_group = var.security_group
  iam_instance_profile = var.iam_instance_profile
  name = local.name
}