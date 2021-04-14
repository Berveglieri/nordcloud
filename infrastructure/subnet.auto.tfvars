vpc_subnets = {
  public_application_subnet = {
    production = {
      cidr_block = "10.0.0.0/16"
      netmask = "8"
      tags = {
        subnet-type = "public"
      }
    }
    development = {}
    testing = {}
  }

  private_database_subnet = {
    production = {
      cidr_block = "10.0.10.0/24"
      netmask = "4"
      tags = {
        subnet-type = "private"
      }
    }
    development = {}
    testing = {}
  }
}