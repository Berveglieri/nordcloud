variable "app_name" {
  type = string
  description = "The codedeploy application name."
}

variable "deployment_group_name" {
  type = string
  description = "the codedeploy group name."
}

variable "service_role_arn" {
  type = string
  description = "The service role arn."
}

variable "autoscaling_groups" {
  type = set(string)
  description = "The autoscaling groups."
}

variable "deployment_style" {
  type = string
  description = "The deployment style."
}

variable "deployment_option" {
  type = string
  description = "The deployment option."
}

variable "load_balancer_name" {
  type = string
  description = "The load balancer name."
}

variable "trigger_events" {
  type = set(string)
  description = "the event type to trigger the deploy."
}

variable "trigger_name" {
  type = string
  description = "The trigger name."
}

variable "trigger_target_arn" {
  type = string
  description = "the sns topic arn."
}

variable "action_on_timeout" {
  type = string
  description = "Action to take on deployment timeout."
}

variable "action_on_provisioning" {
  type = string
  description = "Action to take on deployment time."
}

variable "action_on_deployment_success" {
  type = string
  description = "Action to take after a successful deployment."
}

variable "termination_wait_time_in_minutes" {
  type = number
  description = "the time to wait before starting terminating the instances."
}

variable "wait_deployment_ready" {
  type = string
  description = "the time to wait checking for timeout after deployment is ready."
}