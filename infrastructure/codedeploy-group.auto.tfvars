code_deploy_groups = {
  code_deploy_group = {
    production = {
      deployment_group_name = "notejam_app_group"
      deployment_type = "BLUE_GREEN"
      deployment_option = "WITH_TRAFFIC_CONTROL"
      trigger_name = "nojejam_trigger_app"
      trigger_events = ["InstanceSuccess"]
      action_on_timeout = "CONTINUE_DEPLOYMENT"
      action_on_provisioning = "COPY_AUTO_SCALING_GROUP"
      action_on_deployment_success = "TERMINATE"
      termination_wait_time_in_minutes = 5
    }
    development = {}
    testing = {}
  }
}