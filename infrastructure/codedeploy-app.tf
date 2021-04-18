module "code_deploy_app" {
  source = "./codedeploy-app/codedeploy-app"
  configuration = var.code_deploy_app["codedeploy_app"]
}