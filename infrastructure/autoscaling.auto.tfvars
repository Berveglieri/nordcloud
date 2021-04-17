autoscaling = {
  autoscaling_group = {
    production = {
      name = "autoscaling_app_deploy"
      max_size = 1
      min_size = 1
      desired_capacity = 1
      health_check_type = "EC2"
    }
    development = {}
    testing = {}
  }
}