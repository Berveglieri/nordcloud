elastic_ips = {
  nat_gateway_1a = {
    production = {
      vpc = true
      tags = {
        elastic_ip = "production_application_subnet_nat_gw1a"
      }
    }
    development = {}
    testing = {}
  }

  nat_gateway_1b = {
    production = {
      vpc = true
      tags = {
        elastic_ip = "production_application_subnet_nat_gw1b"
      }
    }
    development = {}
    testing = {}
  }

  nat_gateway_1c = {
    production = {
      vpc = true
      tags = {
        elastic_ip = "production_application_subnet_nat_gw1c"
      }
    }
    development = {}
    testing = {}
  }
}