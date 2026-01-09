output "private_ip" {
  value = google_compute_instance.web_server.network_interface[0].network_ip
}

output "vm_name" {
  value = google_compute_instance.web_server.name
}

