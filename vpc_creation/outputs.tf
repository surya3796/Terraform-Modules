output "vpc_id" {
    description = "ID of the VPC"
    value = aws_vpc.myvpc.id
}

output "vpc_cidr_block" {
    description = "CIDR block of the VPC"
    value = aws_vpc.myvpc.cidr_block
}

output "subnet_cidr_block" {
    description = "CIDR block of the subnet"
    value = aws_subnet.mysubnet.cidr_block
}

output "subnet_id" {
    description = "ID of the subnet"
    value = aws_subnet.mysubnet.id
}

output "igw_id" {
    description = "ID of the Internet gateway"
    value = aws_internet_gateway.myigw.id
}

output "route_table_id" {
    description = "ID of the route table"
    value = aws_route_table.myroutetable.id
  
}

output "public_ip_address_instance" {
    description = "Public IP address of the Instance"
    value = aws_instance.ec2-instance.public_ip
}

output "private_id_address_instance" {
    description = "Private IP address of the Instance"
    value = aws_instance.ec2-instance.private_ip
}

output "instance_state" {
    description = "State of the Instance"
    value = aws_instance.ec2-instance.instance_state
}