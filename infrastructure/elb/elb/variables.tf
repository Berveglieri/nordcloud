variable "configuration" {
  type = any
  description = "Map with per workspace and vpc subnet  configuration."
}

variable "security_groups" {
  type = list(string)
  description = "The security group IDs."
}

variable "subnets" {
  type = set(string)
  description = "The subnets IDs."
}
