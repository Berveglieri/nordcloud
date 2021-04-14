variable "route_table_id" {
  type = string
  description = "The route table ID."
}

variable "destination_cidr_block" {
  type = string
  description = "The destination network to reach."
}

variable "nat_gateway_id" {
  type = string
  description = "The internet gateway ID."
}
