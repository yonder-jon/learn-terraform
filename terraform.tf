# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

  /*
  cloud {
    organization = "tutorial-org-yonder-jon"

    workspaces {
      name = "learn-terraform"
    }
  }
*/
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean",
      version = "~> 2.0"
    }
  }

  required_version = "~> 1.2"
}
