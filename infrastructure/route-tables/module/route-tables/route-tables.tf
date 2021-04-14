locals {
  required_tags = {
    Name = "${terraform.workspace}-route"
    environment = terraform.workspace
  }
}

resource "aws_route_table" "main-route-table" {
  vpc_id = var.vpc_id
  tags = merge(var.tags, local.required_tags)
}