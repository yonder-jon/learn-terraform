variable "DO_PAT" {}

variable "domain_root" {
  description = "Root domain to attatch to"
  default = "opti-lab.co.uk"
}

variable "root_ip" {
  description = "IP address to be tied to the base domain"
}

variable "vpc_name" {
  description = "Name of the Virtual Private Cloud"
  default = "vpc"
}

variable "region" {
  description = "Data-center to deploy to"
  default = "lon1"
}