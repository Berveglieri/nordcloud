variable "configuration" {
  type = any
  description = "Map with per workspace gateway configuration."
}

variable "subnet_id" {
  type = string
  description = "Subnet ID to link to the route."
}

variable "route_table_id" {
  type = string
  description = "route table ID to create the traffic routes"
}