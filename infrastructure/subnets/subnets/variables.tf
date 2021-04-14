variable "configuration" {
  type = any
  description = "Map with per workspace and vpc subnet  configuration."
}

variable "vpc_id" {
  type = string
  description = "The Id of the VPC to create the subnet."
}
