variable "max_size" {
  type = number
  description = "Max number of instance to scale up."
}

variable "min_size" {
  type = number
  description = "Minimum number of instance to keep."
}

variable "desired_capacity" {
  type = number
  description = "The number of Amazon EC2 instances that should be running in the group."
}

variable "health_check_type" {
  type = string
  description = "EC2 or ELB."
}

variable "load_balancers" {
  type = list(string)
  description = "A list of elastic load balancer names to add to the autoscaling group names."
}

variable "launch_configuration" {
  type = string
  description = " Nested argument with Launch template specification to use to launch instances."
}

variable "vpc_zones" {
  type = list(string)
  description = "A list of subnet IDs to launch resources in."
}

variable "name" {
  type = string
  description = "The autoscaling group name."
}