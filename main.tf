# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "digitalocean" {
  token = var.DO_PAT
}

module "networking" {
  source = "./modules/network"

  DO_PAT  = var.DO_PAT
  root_ip = digitalocean_droplet.ubuntu.ipv4_address
  region = var.region
}

resource "digitalocean_droplet" "ubuntu" {
  image  = "ubuntu-24-04-x64"
  name   = var.instance_name
  region = var.region
  size   = var.instance_size

  vpc_uuid = module.networking.vpc_id

  lifecycle {
    create_before_destroy = true
  }
}
