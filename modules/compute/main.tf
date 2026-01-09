# Compute Engine VM (private)

resource "google_compute_instance" "web_server" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  allow_stopping_for_update = true

  tags = ["web-server"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = var.subnet_id
    # No external IP → private VM
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y nginx
    systemctl enable nginx
    systemctl start nginx
  EOF
}
