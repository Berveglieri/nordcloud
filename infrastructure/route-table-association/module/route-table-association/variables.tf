variable "subnet_id" {
  type = string
  description = "Subnet ID to link to the route."
}

variable "route_table_id" {
  type = string
  description = "route table ID to create the traffic routes"
}