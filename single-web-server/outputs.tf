output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP of the web server"
}