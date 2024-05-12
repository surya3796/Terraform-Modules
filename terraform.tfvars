aws_region          = "us-east-1"
vpc_name            = "My-VPC"
vpc_cidr            = "10.0.0.0/16"
target_azs          = ["us-east1a", "us-east-1b", "us-east-1c"]
public_subnet_cidr  = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidr = ["10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24"]
igw_name            = "My-IGW"
routetable_name     = "My-routeTable"