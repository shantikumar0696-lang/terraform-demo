# Instance group for LB

resource "google_compute_instance_group" "web_group" {
  name      = "web-group"
  zone      = "asia-south1-a"
  instances = ["projects/cool-codex-483413-c9/zones/asia-south1-a/instances/asia-private-web-vm"]
}


# -------------------------
# Health Check
# -------------------------
resource "google_compute_health_check" "web_hc" {
  name = var.health_check_name

  http_health_check {
    request_path = var.health_check_path
    port         = var.health_check_port
  }
}

# -------------------------
# Backend Service
# -------------------------
resource "google_compute_backend_service" "web_backend" {
  name          = var.backend_service_name
  protocol      = "HTTP"
  port_name     = "http"
  timeout_sec   = var.backend_timeout_sec
  health_checks = [google_compute_health_check.web_hc.id]

  backend {
    group = google_compute_instance_group.web_group.self_link
  }
  depends_on = [google_compute_instance_group.web_group]
}

# -------------------------
# URL Map & HTTP Proxy
# -------------------------
resource "google_compute_url_map" "web_map" {
  name            = var.url_map_name
  default_service = google_compute_backend_service.web_backend.id
}

resource "google_compute_target_http_proxy" "http_proxy" {
  name    = var.http_proxy_name
  url_map = google_compute_url_map.web_map.id
}

# -------------------------
# Global IP for LB
# -------------------------
resource "google_compute_global_address" "lb_ip" {
  name = var.global_ip_name
}

# -------------------------
# Forwarding Rule
# -------------------------
resource "google_compute_global_forwarding_rule" "http_forward" {
  name       = var.forwarding_rule_name
  ip_address = google_compute_global_address.lb_ip.address
  target     = google_compute_target_http_proxy.http_proxy.id
  port_range = var.forwarding_rule_port
}