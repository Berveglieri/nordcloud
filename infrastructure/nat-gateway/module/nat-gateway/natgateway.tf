locals {
  required_tags = {
    Name = "${terraform.workspace}-nat-gateway"
    environment = terraform.workspace
  }
}

resource "aws_nat_gateway" "main-vpc-nat-gw" {
  allocation_id = var.allocation_id
  subnet_id = var.subnet_id
  tags = merge(var.tags,local.required_tags)
}