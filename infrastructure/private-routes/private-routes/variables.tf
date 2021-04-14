variable "configuration" {
  type = any
  description = "Map with per workspace gateway configuration."
}

variable "nat_gateway_id" {
  type = string
  description = "The nat gateway ID."
}

variable "route_table_id" {
  type = string
  description = "The route table ID."
}
