module "code_deploy_app" {
  source = "../_module/codedeploy-app"
  compute_platform = local.compute_platform
  name = local.name
}