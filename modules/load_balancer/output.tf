output "lb_ip" {
  description = "Public IP of the HTTP load balancer"
  value       = google_compute_global_address.lb_ip.address
}


output "web_group_id" {
  value = google_compute_instance_group.web_group.name
}