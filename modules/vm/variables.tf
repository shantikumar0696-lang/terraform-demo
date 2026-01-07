variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "vm_name" {
    description = "instance1"
    type = string
}
variable "zone" {
    description = "asia-south1-a"
    type = string
}
variable "machine_type" {
    description = "This is themachine type"
     type = string
}
variable "network_id" {
    description = "This is the network id"
     type = string
}
variable "subnet_id" {
    description = "This is the subnet id"
     type = string
}

variable "tags" {
  description = "A list of network tags to apply to the instance."
  type        = list(string)
  default     = []
}

variable "boot_image" {
  description = "The boot image for the VM instance."
  type        = string
  default     = "debian-cloud/debian-11"
}