variable "router_name" {
  type        = string
  description = "Name of the Cloud Router"
}

variable "nat_name" {
  type        = string
  description = "Name of the NAT configuration"
}

variable "network_id" {
  type        = string
  description = "VPC network ID to attach NAT"
}

variable "region" {
  type        = string
  description = "GCP region"
}
