resource "google_compute_firewall" "allow_lb_http" {
  name    = var.firewall_name
  network = var.network_id

  direction = "INGRESS"

  # Google Load Balancer IP ranges ONLY
  source_ranges = [
    "130.211.0.0/22",
    "35.191.0.0/16" , 
    "35.235.240.0/20"
  ]

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  # Apply only to web VM
  target_tags = ["web-server"]
}