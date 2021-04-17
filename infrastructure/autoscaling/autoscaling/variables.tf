variable "configuration" {
  type = any
  description = "Map with per workspace and vpc subnet  configuration."
}

variable "launch_configuration" {
  type = string
  description = " Nested argument with Launch template specification to use to launch instances."
}

variable "vpc_zones" {
  type = list(string)
  description = "A list of subnet IDs to launch resources in."
}

variable "load_balancers" {
  type = list(string)
  description = "A list of elastic load balancer names to add to the autoscaling group names."
}