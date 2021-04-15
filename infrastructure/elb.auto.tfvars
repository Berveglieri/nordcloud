elbs = {
  elb = {
    production = {
      name = "elb-app"
      health_check = [
        {
          healthy_threshold = 2
          interval = 30
          target = "HTTP:5000/"
          timeout = 3
          unhealthy_threshold = 4
        }
      ]
      listener = [
        {
          instance_port = 5000
          instance_protocol = "http"
          lb_port = 80
          lb_protocol = "http"
        }
      ]
    }
    development = {}
    testing = {}
  }
}