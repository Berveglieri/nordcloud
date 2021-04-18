autoscaling = {
  autoscaling_group = {
    production = {
      name = "autoscaling_app_deploy"
      max_size = 6
      min_size = 3
      desired_capacity = 3
      health_check_type = "EC2"
    }
    development = {}
    testing = {}
  }
}