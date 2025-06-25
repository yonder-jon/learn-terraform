# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "digitalocean" {
  token = var.DO_PAT
}

resource "digitalocean_droplet" "ubuntu" {
  image  = "ubuntu-24-04-x64"
  name   = var.instance_name
  region = var.region
  size   = var.instance_size

  lifecycle {
    create_before_destroy = true
  }
}
