variable "instance" {
  type = string
  description = "The instance type."
}

variable "security_group" {
  type = list(string)
  description = "The security group to be attached to the resource."
}