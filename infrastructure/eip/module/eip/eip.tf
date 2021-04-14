locals {
  required_tags = {
    Name = "${terraform.workspace}-subnet"
    environment = terraform.workspace
  }
}

resource "aws_eip" "nat" {
  vpc = var.vpc
  tags = merge(var.tags,local.required_tags)
}