variable "vpc_id" {
  type = string
  description = "The VPC ID."
}

variable "cidr_block" {
  type = string
}

variable "netmask" {
  type = string
}

variable "availability_zones" {
  type = map(string)
  description = "The AZ for the subnet."
  default = {}
}

variable "map_customer_owned_ip_on_launch" {
  type = string
  description = "Specify true to indicate that network interfaces created in the subnet should be assigned a customer owned IP address."
  default = false
}

variable "map_public_ip_on_launch" {
  type = string
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
  default = true
}

variable "tags" {
  type = map(string)
}
