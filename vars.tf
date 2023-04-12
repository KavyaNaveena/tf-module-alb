variable "name" {}
variable "env" {}
variable "tags" {}
variable "internal" {}
variable "load_balancer_type" {}
variable "subnets" {}


variable "enable_deletion_protection" {
  default = false
}