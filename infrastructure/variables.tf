variable "vpcs" {
  description = "Map, holding configuration of all vpcs."
  type        = map(any)
}

variable "vpc_subnets" {
  description = "Map, holding configuration of all vpc subnets."
  type        = map(any)
}

variable "elastic_ips" {
  description = "Map, holding configuration of all eips."
  type        = map(any)
}

variable "nat_gws" {
  description = "Map, holding configuration of all nat gateways."
  type        = map(any)
}

variable "route_tables" {
  description = "Map, holding configuration of all route tables."
  type        = map(any)
}

variable "routes" {
  description = "Map, holding configuration of all routes."
  type        = map(any)
}

variable "route-tables-association" {
  description = "Map, holding configuration of all association tables."
  type        = map(any)
}