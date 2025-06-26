resource "digitalocean_domain" "default" {
  name       = var.domain_root
  ip_address = var.root_ip
}
