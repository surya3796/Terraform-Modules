output "available_zones_names" {
  description = "list all available zone names"
  value       = data.aws_availability_zones.my_availability_zones.names
}

output "public_subnets_tags" {
  description = "list of public subnets"
  value       = aws_subnet.my_public_subnets[*].tags
}

output "private_subnets_tags" {
  description = "list of private subnets"
  value       = aws_subnet.my_private_subnets[*].tags
}

output "igw_name" {
  description = "name of the internet gateway"
  value       = aws_internet_gateway.my_igw.tags
}

output "rt_name" {
  description = "name of the route table"
  value       = aws_route_table.my_routetable.tags
}

output "associated_subnets" {
  description = "subnets that are associated with the route table"
  value       = aws_route_table_association.my_public_routetable_association[*].subnet_id
}