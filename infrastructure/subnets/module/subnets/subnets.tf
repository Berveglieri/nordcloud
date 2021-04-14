data "aws_availability_zones" "azs" {
  state = "available"
}

locals {
  required_tags = {
    Name = "${terraform.workspace}-subnet"
    environment = terraform.workspace
  }
  availability_zones = {for idx, az in data.aws_availability_zones.azs.names : idx => az}
}

resource "aws_subnet" "subnet" {
  vpc_id = var.vpc_id
  for_each = local.availability_zones
  availability_zone = each.value
  cidr_block = cidrsubnet(var.cidr_block, var.netmask, each.key)
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = merge(var.tags, local.required_tags)
}
