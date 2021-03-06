variable "resource_group" {
  type = string
}

variable "lb_type" {
  type    = string
  default = "public"
}

variable "cluster_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "name_suffix" {
  type = string
}

variable "target" {
  type    = string
  default = "workers"
}

variable "lb_ports" {
  type    = map(list(string))
  default = {}
}

variable "lb_probe_interval" {
  type    = string
  default = 5
}

variable "lb_probe_unhealthy_threshold" {
  type    = string
  default = 2
}

variable "subnet_id" {
  type    = string
  default = ""
}

variable "frontend_private_ip_address_allocation" {
  type    = string
  default = "Dynamic"
}

variable "frontend_private_ip_address" {
  type    = string
  default = ""
}

variable "default_tags" {
  type = map(string)

  default = {
    applicationname = "Load Balancer"
    deploymenttype  = "Terraform"
    platform        = "Agnostic"
  }
}
