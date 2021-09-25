variable "aws_region" {
}

variable "vpc_name" {
  type = string
}

variable "cidr" {
  type = string
  validation {
    condition     = can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}($|/(16))$", var.pod_cidr))
    error_message = "Vpc_cidr value must be greater than 172.0.0.0/16."
  }
}

variable "azs" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

