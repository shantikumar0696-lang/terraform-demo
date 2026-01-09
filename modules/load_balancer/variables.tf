
variable "health_check_name" {
  type        = string
  description = "Name of the health check"
}

variable "health_check_path" {
  type        = string
  description = "HTTP path for health check"
}

variable "health_check_port" {
  type        = number
  description = "Port for health check"
}

variable "backend_service_name" {
  type        = string
  description = "Name of the backend service"
}

variable "backend_timeout_sec" {
  type        = number
  description = "Backend service timeout in seconds"
}

variable "url_map_name" {
  type        = string
  description = "Name of the URL map"
}

variable "http_proxy_name" {
  type        = string
  description = "Name of the HTTP proxy"
}

variable "global_ip_name" {
  type        = string
  description = "Name of the global IP for LB"
}

variable "forwarding_rule_name" {
  type        = string
  description = "Name of the forwarding rule"
}

variable "forwarding_rule_port" {
  type        = string
  description = "Port range for forwarding rule, e.g., '80'"
}