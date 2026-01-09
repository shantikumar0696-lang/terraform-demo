output "firewall_rule_name" {
  value       = google_compute_firewall.allow_lb_http.name
  description = "Name of the firewall rule allowing HTTP from Load Balancer"
}
