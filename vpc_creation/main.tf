resource "aws_key_pair" "mykeypair" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidrblock_range_for_vpc
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "mysubnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.cidrblock_range_for_public_subnet
  availability_zone       = var.public_subnet_availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = var.internet_gateway_name
  }
}

resource "aws_route_table" "myroutetable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "rtb" {
  subnet_id      = aws_subnet.mysubnet.id
  route_table_id = aws_route_table.myroutetable.id
}

resource "aws_security_group" "mySg" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    description = var.ingress_description
    from_port   = var.ingress_port_number
    to_port     = var.ingress_port_number
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = var.egress_port_number
    to_port     = var.egress_port_number
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-sg"
  }
}

resource "aws_instance" "ec2-instance" {
  ami                    = var.ami_value
  instance_type          = var.instance_type_value
  subnet_id              = aws_subnet.mysubnet.id
  key_name               = aws_key_pair.mykeypair.key_name
  vpc_security_group_ids = [aws_security_group.mySg.id]
  tags = {
    Name = var.instance_tag_name
  }

  /*connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    host        = self.public_ip
  }*/
}