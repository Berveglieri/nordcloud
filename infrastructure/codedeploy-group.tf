module "app_deploy_group" {
  source = "./codedeploy-group/codedeploy-group"

  app_name = module.code_deploy_app.codedeploy_app_name
  autoscaling_groups = [module.main_app_autoscaling.autoscaling_group_name]
  configuration = var.code_deploy_groups["code_deploy_group"]
  load_balancer_name = module.elb_app.elb_name
  service_role_arn = aws_iam_role.code_deploy_ec2.arn
  trigger_target_arn = aws_sns_topic.app_deploy_sns.arn
}