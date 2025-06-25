# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "instance_id" {
  value = digitalocean_droplet.ubuntu.id
}

output "instance_urn" {
  value = digitalocean_droplet.ubuntu.urn
}

output "instance_ip" {
  value = digitalocean_droplet.ubuntu.ipv4_address
}

