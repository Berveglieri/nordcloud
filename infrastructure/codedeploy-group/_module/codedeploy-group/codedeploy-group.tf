resource "aws_codedeploy_deployment_group" "app_deploy_group" {
  app_name = var.app_name
  deployment_group_name = var.deployment_group_name
  service_role_arn = var.service_role_arn

  autoscaling_groups = var.autoscaling_groups

  trigger_configuration {
    trigger_events = var.trigger_events
    trigger_name = var.trigger_name
    trigger_target_arn = var.trigger_target_arn
  }

  blue_green_deployment_config {
    deployment_ready_option {
      action_on_timeout = var.action_on_timeout
    }

    green_fleet_provisioning_option {
      action = var.action_on_provisioning
    }

    terminate_blue_instances_on_deployment_success {
      action = var.action_on_deployment_success
      termination_wait_time_in_minutes = var.termination_wait_time_in_minutes
    }
  }

  deployment_style {
    deployment_type = var.deployment_style
    deployment_option = var.deployment_option
  }

  load_balancer_info {
    elb_info {
      name = var.load_balancer_name
    }
  }
}