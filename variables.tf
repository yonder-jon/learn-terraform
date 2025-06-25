# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "DO region"
  default     = "lon1"
}

variable "instance_size" {
  description = "Type of DO droplet to provision"
  default     = "s-1vcpu-1gp"
}

variable "instance_name" {
  description = "DO droplet name"
  default     = "Provisioned by Terraform"
}

variable "DO_PAT" {}
