# VPC Module Variables
variable "vpc_name" {
  type        = string
  description = "Name of the VPC network"
}

variable "region" {
  type        = string
  description = "GCP region"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR range for the private subnet"
}


# GCP Provider Variables
variable "project" {
  type        = string
  description = "GCP Project ID"
}

variable "zone" {
  type        = string
  description = "GCP zone"
}


# NAT Module Variables
variable "router_name" {
  type        = string
  description = "Name of the Cloud Router"
}

variable "nat_name" {
  type        = string
  description = "Name of the NAT configuration"
}


# Compute Module Variables
variable "vm_name" {
  type        = string
  description = "Name of the VM"
}

variable "machine_type" {
  type        = string
  description = "GCP machine type for VM"
}

variable "image" {
  type        = string
  description = "Boot image for the VM"
}


variable "firewall_name" {
  type        = string
  description = "Name of the firewall rule for allowing HTTP from Load Balancer"
}


# Load Balancer Module Variables
variable "health_check_name" {
  type        = string
  description = "Name of the health check for the load balancer"
}

variable "health_check_path" {
  type        = string
  description = "HTTP path for the health check"
}

variable "health_check_port" {
  type        = number
  description = "Port for the health check"
}

variable "backend_service_name" {
  type        = string
  description = "Name of the backend service"
}

variable "backend_timeout_sec" {
  type        = number
  description = "Timeout in seconds for the backend service"
}

variable "url_map_name" {
  type        = string
  description = "Name of the URL map"
}

variable "http_proxy_name" {
  type        = string
  description = "Name of the HTTP proxy"
}

variable "global_ip_name" {
  type        = string
  description = "Name of the global IP for the load balancer"
}

variable "forwarding_rule_name" {
  type        = string
  description = "Name of the forwarding rule"
}

variable "forwarding_rule_port" {
  type        = string
  description = "Port for the forwarding rule, e.g., '80'"
}

 
 
 