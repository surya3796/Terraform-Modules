resource "aws_vpc" "my_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}

data "aws_availability_zones" "my_availability_zones" {}

resource "aws_subnet" "my_public_subnets" {
  count                   = length(var.target_azs)
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public_subnet_cidr[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = "PublicSubnet_${var.target_azs[count.index]}"
  }
}

resource "aws_subnet" "my_private_subnets" {
  count      = length(var.target_azs)
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.private_subnet_cidr[count.index]
  tags = {
    Name = "PrivateSubnet_${var.target_azs[count.index]}"
  }
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "my_routetable" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
  depends_on = [aws_internet_gateway.my_igw]
  tags = {
    Name = var.routetable_name
  }
}

resource "aws_route_table_association" "my_public_routetable_association" {
  count          = length(aws_subnet.my_public_subnets)
  subnet_id      = aws_subnet.my_public_subnets[count.index].id
  route_table_id = aws_route_table.my_routetable.id
  depends_on     = [aws_subnet.my_public_subnets, aws_route_table.my_routetable]
}