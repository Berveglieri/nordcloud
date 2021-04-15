variable "bucket_name" {
  type = string
  description = "the name of the bucket to be created."
}

variable "acl" {
  type = string
  description = "The canned ACL to apply."
}