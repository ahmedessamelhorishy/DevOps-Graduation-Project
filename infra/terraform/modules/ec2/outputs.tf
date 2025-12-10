output "public_ip" {
  value = aws_instance.tools.public_ip
}

output "public_dns" {
  value = aws_instance.tools.public_dns
}