route_tables = {
  route_table_public_application_subnet = {
    production = {
    tags = {
      route = "public_application_route_table"
    }
    }
    development = {}
    testing = {}
  }

  route_table_private_database_subnet1 = {
    production = {
      tags = {
        route = "private_database_route_table1"
      }
    }
    development = {}
    testing = {}
  }

  route_table_private_database_subnet2 = {
    production = {
      tags = {
        route = "private_database_route_table2"
      }
    }
    development = {}
    testing = {}
  }

  route_table_private_database_subnet3 = {
    production = {
      tags = {
        route = "private_database_route_table3"
      }
    }
    development = {}
    testing = {}
  }
}
