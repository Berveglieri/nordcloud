security_groups = {
  security_groups = {
    production = {
      name = "default-sg"
      description = "Security group with http, ssh and 5000 ports allowed"
      ingress = [
        {
        description = "allow ssh"
        from_port = 22
        protocol = "tcp"
        to_port = 22
        cidr_blocks = ["31.18.88.155/32", "10.0.0.0/16"]
      },
      {
        description = "allow http"
        from_port = 80
        protocol = "tcp"
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]
      },
      {
        description = "allow 5000"
        from_port = 5000
        protocol = "tcp"
        to_port = 5000
        cidr_blocks = ["0.0.0.0/0"]
      }
        ]
      egress = [
        {
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
      }
      ]
    }
    development = {}
    testing = {}
  }
}