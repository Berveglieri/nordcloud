variable "configuration" {
  type = any
  description = "Map with per workspace and vpc subnet  configuration."
}

variable "allocation_id" {
  type = string
  description = "The Allocation ID of the Elastic IP address for the gateway."
}

variable "subnet_id" {
  type = string
  description = "The Subnet ID of the subnet in which to place the gateway."
}