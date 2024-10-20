output "instance_ip_address" {
  value       = aws_instance.nginx_server.private_ip
}
