variable "name" {
  type = string
  description = "The name of the security group."
}

variable "description" {
  type = string
  description = "A description for the security group."
}

variable "vpc_id" {
  type = string
  description = "The VPC ID."
}

variable "ingress" {
  type = list(object({
    description = string
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
  }))
}

variable "egress" {
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
  }))
}