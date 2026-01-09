resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  project                 = var.project
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "private_subnet" {
  name                     = "${var.vpc_name}-subnet"
  region                   = var.region
  network                  = google_compute_network.vpc.id
  ip_cidr_range            = var.subnet_cidr
  private_ip_google_access = true  # Required for Cloud NAT & Google APIs
}