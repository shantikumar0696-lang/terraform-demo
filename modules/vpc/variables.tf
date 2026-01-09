variable "vpc_name" {
  type        = string
  description = "Name of the VPC network"
}

variable "region" {
  type        = string
  description = "Region where VPC and subnet are created"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR range for the private subnet"
}

variable "project" {
  type        = string
  description = "project name"
}