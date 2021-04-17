variable "instance" {
  type = string
  description = "The instance type."
}

variable "security_group" {
  type = list(string)
  description = "The security group to be attached to the resource."
}

variable "iam_instance_profile" {
    type = string
  description = "The name of the iam role."
}

variable "name" {
  type = string
  description = "The launch configuration name."
}