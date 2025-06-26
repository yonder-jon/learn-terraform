resource "digitalocean_domain" "default" {
  name       = "opti-lab.co.uk"
  ip_address = digitalocean_droplet.ubuntu.ipv4_address
}
