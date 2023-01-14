output "test" {
  value = "hello world"
}

output "instance_ip_address" {
  value = aws_instance.server.public_ip
}