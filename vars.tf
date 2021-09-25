variable "AWS_REGION" {
  default = "us-east-2"
}

variable "vpc_name" {
  type = string
}

variable "cidr" {
  type = string
  validation {
    condition     = can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}($|/(16))$", var.cidr))
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

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}