variable "alb_name" {}
variable "alb_security_group" {}
variable "container_name" {}
variable "container_image" {}
variable "container_cpu" {}
variable "container_memory" {}
variable "container_memory_reservation" {}
variable "container_port" {}
variable "ecs_cluster_arn" {}
variable "environment_variables" {
  type = list(object({
    name  = string
    value = string
  }))
}
variable "environment_secrets" {
  type = list(object({
    name      = string
    valueFrom = string
  }))
}
variable "healthcheck_path" {}
variable "healthcheck_port" {
  description = "The port to use to connect with the target. Valid values are either ports 1-65536, or traffic-port."
  default     = "traffic-port"
}
variable "https_listener_arn" {}
variable "https_listener_arn_priority" {
  type = number
}
variable "ingress_host" {}
variable "ingress_paths" {
  type        = list(string)
  default     = []
  description = "An array of paths; supports * as a wildcard"
}
variable "label_id" {}
variable "log_configuration_options" {
  type = map
}
variable "repository_credentials" {
  default = null
  type    = map(string)
}
variable "security_groups_ids" {
  type = list(string)
}
variable "subnet_ids" {}
variable "tags" {}
variable "task_cpu" {}
variable "task_memory" {}
variable "vpc_id" {}
