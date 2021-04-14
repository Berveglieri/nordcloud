variable "vpc" {
  type = bool
  description = "Boolean if the EIP is in a VPC or not."
}

variable "instance" {
  type = string
  description = "EC2 instance ID."
  default = ""
}

variable "network_interface" {
  type = string
  description = "Network interface ID to associate with."
  default = ""
}

variable "tags" {
  type = map(string)
  description = " A map of tags to assign to the resource."
  default = {}
}