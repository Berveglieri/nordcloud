resource "aws_route" "public_internet_gateway" {
  route_table_id = var.route_table_id
  destination_cidr_block = var.destination_cidr_block
  nat_gateway_id = var.nat_gateway_id
}
