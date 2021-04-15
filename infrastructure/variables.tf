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

variable "s3_bucket" {
  description = "Map, holding configuration of all buckets."
  type        = map(any)
}

variable "launch_configuration" {
  description = "Map, holding configuration of all launch configuration."
  type        = map(any)
}

variable "security_groups" {
  description = "Map, holding configuration of all security groups."
  type        = map(any)
}

variable "elbs" {
  description = "Map, holding configuration of all elbs"
  type = map(any)
}