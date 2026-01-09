# VPC Module
module "vpc" {
  source      = "./modules/vpc"
  project     = var.project
  vpc_name    = var.vpc_name
  region      = var.region
  subnet_cidr = var.subnet_cidr
}


# Cloud NAT Module
module "nat" {
  source      = "./modules/nat"
  router_name = var.router_name
  nat_name    = var.nat_name
  network_id  = module.vpc.network_id
  region      = var.region
  depends_on  = [module.vpc]
}

# Compute Module (Private VM)
module "compute" {
  source       = "./modules/compute"
  vm_name      = var.vm_name
  machine_type = var.machine_type
  image        = var.image
  zone         = var.zone
  subnet_id    = module.vpc.subnet_id
  depends_on   = [module.vpc, module.nat]
}



module "firewall" {
  source        = "./modules/firewall"
  firewall_name = var.firewall_name
  network_id    = module.vpc.network_id
}

module "load_balancer" {
  source            = "./modules/load_balancer"
  #instance_group_id =  google_compute_instance_group.web_group.name
  health_check_name = var.health_check_name
  health_check_path = var.health_check_path
  health_check_port = var.health_check_port
  backend_service_name = var.backend_service_name
  backend_timeout_sec  = var.backend_timeout_sec
  url_map_name         = var.url_map_name
  http_proxy_name      = var.http_proxy_name
  global_ip_name       = var.global_ip_name
  forwarding_rule_name = var.forwarding_rule_name
  forwarding_rule_port = var.forwarding_rule_port
  depends_on           = [module.compute, module.firewall]
}
