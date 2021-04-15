variable "configuration" {
  type = any
  description = "Map with per workspace and vpc subnet  configuration."
}

variable "security_group" {
  type = list(string)
  description = "The security group to be attached to the resource."
}