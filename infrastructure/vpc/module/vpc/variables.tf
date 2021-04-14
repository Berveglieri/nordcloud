variable "cidr_block" {
  type = string
  description = "The CIDR block list for the VPC."
}

variable "secondary_cidrs" {
  type = map(string)
  description = "Secondary CIDRs for the VPC."
}

variable "instance_tenancy" {
  type = string
  description = "A tenancy option for instances launched into the VPC."
  default = "default"
}

variable "dns_support" {
  type = string
  description = "A boolean flag to enable/disable DNS support in the VPC."
  default = true
}

variable "enable_classiclink" {
  type = string
  description = " A boolean flag to enable/disable ClassicLink for the VPC."
  default = false
}

variable "enable_dns_hostnames" {
  type = string
  description = "A boolean flag to enable/disable DNS hostnames in the VPC."
  default = true
}

variable "tags" {
  type = map(string)
  description = "A map of tags to assign to the resource."
  default = {}
}
