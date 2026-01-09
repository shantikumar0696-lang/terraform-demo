
# Project 
project = "cool-codex-483413-c9"
region  = "asia-south1"
zone    = "asia-south1-a"


# VPC
vpc_name    = "private-vpc"
subnet_cidr = "10.10.0.0/24"


# Cloud NAT
router_name = "asia-nat-router"
nat_name    = "asia-nat-config"


# Compute (Private VM)
vm_name      = "asia-private-web-vm"
machine_type = "e2-medium"
image        = "debian-cloud/debian-12"


# Firewall
firewall_name = "allow-lb-http"


# Load Balancer
health_check_name    = "web-hc"
health_check_path    = "/"
health_check_port    = 80

backend_service_name = "web-backend"
backend_timeout_sec = 10

url_map_name         = "web-map"
http_proxy_name      = "http-proxy"
global_ip_name       = "lb-ip"

forwarding_rule_name = "http-forwarding-rule"
forwarding_rule_port = "80"
