resource "digitalocean_domain" "default" {
  name       = var.domain_root
  ip_address = var.root_ip
}

resource "digitalocean_record" "CNAME-www" {
  domain = digitalocean_domain.default.name
  type   = "CNAME"
  name   = "www"
  value  = "@"
}
