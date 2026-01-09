output "vpc_id" {
  value       = module.vpc.network_id
  description = "VPC Network ID"
}

output "subnet_id" {
  value       = module.vpc.subnet_id
  description = "Subnet ID"
}

output "private_vm_ip" {
  value       = module.compute.private_ip
  description = "Private IP of the VM"
}

output "vm_name" {
  value       = module.compute.vm_name
  description = "Name of the VM"
}

output "nat_name" {
  value       = var.nat_name
  description = "Name of the NAT"
}

output "router_name" {
  value       = var.router_name
  description = "Cloud Router Name"
}

output "lb_ip" {
  description = "Public IP of the HTTP load balancer"
  value       = module.load_balancer.lb_ip
}



