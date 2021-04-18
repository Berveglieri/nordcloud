variable "configuration" {
  type = any
  description = "Map with per workspace and vpc subnet  configuration."
}

variable "service_role_arn" {
  type = string
  description = "The service role arn."
}

variable "autoscaling_groups" {
  type = set(string)
  description = "The autoscaling groups."
}

variable "load_balancer_name" {
  type = string
  description = "The load balancer name."
}

variable "app_name" {
  type = string
  description = "The codedeploy application name."
}

variable "trigger_target_arn" {
  type = string
  description = "the sns topic arn."
}