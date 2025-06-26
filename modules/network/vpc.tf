resource "digitalocean_vpc" "vpc" {
  name = var.vpc_name
  region = var.region
  ip_range = "10.0.67.0/24"
}