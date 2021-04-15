variable "name" {
  type = string
  description = "The ELB name."
}

variable "security_groups" {
  type = list(string)
  description = "The security group IDs."
}

variable "subnets" {
  type = set(string)
  description = "The subnets IDs."
}

variable "health_check" {
  type = list(object({
    healthy_threshold = number
    unhealthy_threshold = number
    timeout = number
    interval = number
    target = string
  }))
}

variable "listener" {
  type = list(object({
    lb_port = number
    lb_protocol = string
    instance_port = number
    instance_protocol = string
  }))
}