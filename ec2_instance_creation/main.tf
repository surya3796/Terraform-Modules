resource "aws_instance" "ec2-instance" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    subnet_id = var.subnet_id_value
    key_name = var.key_name_value
    tags = {
    Name = var.tag_name
    }
}