output "router_id" {
  value       = google_compute_router.nat_router.id
  description = "Cloud Router ID"
}

output "nat_id" {
  value       = google_compute_router_nat.nat.id
  description = "Cloud NAT ID"
}