output "network_id" {
  description = "The self-link of the created VPC network."
  value       = google_compute_network.network.self_link
}

output "subnet_id" {
  description = "The self-link of the created subnet."
  value       = google_compute_subnetwork.subnet.self_link
}