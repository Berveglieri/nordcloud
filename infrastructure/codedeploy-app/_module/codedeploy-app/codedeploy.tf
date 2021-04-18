resource "aws_codedeploy_app" "app_deploy" {
  compute_platform = var.compute_platform
  name             = var.name
}