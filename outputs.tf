output "Webserver-IP" {
  description = "Server IP"
  value       = aws_instance.web-server-instance.public_ip
}