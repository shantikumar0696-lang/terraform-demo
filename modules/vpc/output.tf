output "network_id" {
  value       = google_compute_network.vpc.id
  description = "VPC network id"
}


output "subnet_id" {
  value       = google_compute_subnetwork.private_subnet.id
  description = "Subnet id"
}

