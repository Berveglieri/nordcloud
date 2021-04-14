variable "vpc_id" {
  type = string
  description = "The VPC ID."
}

variable "tags" {
  type = map(string)
  description = "The tags for the resource."
}