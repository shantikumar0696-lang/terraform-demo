variable "project_id" {
  description = "The GCP project ID to deploy resources into."
  type        = string
} 
variable "region" {
  description = "The GCP region for the VPC and subnetwork."
  type        = string
}
variable "vpc_name" {
  description = "The name for the VPC network."
  type        = string
} 
variable "ip_cidr_range" {
  description = "The IP address range for the subnetwork."
  type        = string
}
variable "auto_create_subnetworks" {
  description = "When set to true, the network is created in 'auto subnet mode'."
  type        = bool
}
variable "vm_name" {
  description = "The name for the virtual machine instance."
  type        = string
}
variable "zone" {
  description = "The GCP zone for the virtual machine instance."
  type        = string
}
variable "machine_type" {
  description = "The machine type for the virtual machine instance."
  type        = string
}