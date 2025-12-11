output "public_ip" {
  value = aws_instance.tools.public_ip
}

output "public_dns" {
  value = aws_instance.tools.public_dns
}

output "key_name" {
  value = aws_key_pair.main.key_name
}

output "ec2_sg_id" {
  value = aws_security_group.ec2_sg.id
}
