variable "region_name" {
  description = "name of the region"
}

variable "access_key_value" {
    description = "value for access key"
}

variable "secret_key_value" {
    description = "value for secret key"
}

variable "key_name" {
    description = "name of the key"
}

variable "vpc_name" {
    description = "name of the vpc"
}

variable "cidrblock_range_for_vpc" {
    description = "range of the cidr for vpc"
}

variable "cidrblock_range_for_public_subnet" {
    description = "range of the cidr for public subnet"
}

variable "public_subnet_availability_zone" {
    description = "name of the public subnet availability zone"
}

variable "public_subnet_name" {
    description = "name of the public subnet"
}

variable "internet_gateway_name" {
    description = "name of the internet gateway"
}

variable "route_table_name" {
    description = "name of the route table"
}

variable "security_group_name" {
    description = "name of the security group"
}

variable "security_group_description" {
    description = "description for the security group"
}

variable "ingress_description" {
    description = "description for the ingress"
}

variable "ingress_port_number" {
    description = "value of the port number for inbound traffic"
}

variable "egress_port_number" {
    description = "value of the port number for outbound traffic"
}

variable "ami_value" {
    description = "value for the ami"
}

variable "instance_type_value" {
    description = "value for instance type"
}

variable "instance_tag_name" {
    description = "value for instance name"
  
}



