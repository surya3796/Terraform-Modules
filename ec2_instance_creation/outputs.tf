output "public-ip-address" {
    value = aws_instance.ec2-instance.public_ip
}

output "private-ip-address" {
    value = aws_instance.ec2-instance.private_ip
}

output "instance-state" {
    value = aws_instance.ec2-instance.instance_state
}