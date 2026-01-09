# Cloud Router
resource "google_compute_router" "nat_router" {
  name    = var.router_name      # use variable for router name
  network = var.network_id       # network id from VPC module
  region  = var.region
}

# Cloud NAT
resource "google_compute_router_nat" "nat" {
  name                              = var.nat_name   # use variable for NAT name
  router                            = google_compute_router.nat_router.name
  region                            = var.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
