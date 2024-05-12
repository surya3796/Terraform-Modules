variable "aws_region" {
  description = "name of the region"
  type        = string
}

variable "vpc_name" {
  description = "name of the vpc"
  type        = string
}

variable "vpc_cidr" {
  description = "cidr range for the vpc"
  type        = string
}

variable "target_azs" {
  description = "list of Availability Zones"
  type        = list(string)
}

variable "public_subnet_cidr" {
  description = "CIDR range for public subnets"
  type        = list(string)
}

variable "private_subnet_cidr" {
  description = "CIDR range for private subnets"
  type        = list(string)
}

variable "igw_name" {
  description = "name of the internet gateway"
  type        = string
}

variable "routetable_name" {
  description = "name of the route table"
  type        = string
}