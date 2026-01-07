variable "vpc_name" {
  description = "The name of the VPC network."
  type = string
}
variable "region" {
  description = "subnet region"
  type = string
}
variable "auto_create_subnetworks" {
  description = " this for auto_create_subnetworks"
  type = bool
}
variable "ip_cidr_range" {
  description = " this for ip_cidr_range"
  type = string
}
