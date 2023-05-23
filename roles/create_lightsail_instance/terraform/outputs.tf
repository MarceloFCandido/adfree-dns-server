output "aws_lightsail_instance_arn" {
  description = "ARN/id of the AWS Lightsail instance."
  sensitive   = true
  value       = aws_lightsail_instance.main.arn
}

output "aws_lightsail_instance_cpu_count" {
  description = "AWS Lightsail instance CPU count."
  value       = aws_lightsail_instance.main.cpu_count
}

output "aws_lightsail_instance_ram_size_gb" {
  description = "AWS Lightsail instance RAM size in GB."
  value       = aws_lightsail_instance.main.ram_size
}

output "aws_lightsail_instance_ipv6_addresses" {
  description = "AWS Lightsail instance's IPv6 addresses."
  sensitive   = true
  value       = aws_lightsail_instance.main.ipv6_addresses
}

output "aws_lightsail_instance_public_address" {
  description = "AWS Lightsail instance's public address."
  sensitive   = true
  value       = aws_lightsail_instance.main.public_ip_address
}

variable "aws_lightsail_instance_is_static_address" {
  description = "Is AWS Lightsail instance IP address static?"
  sensitive   = true
  value       = aws_lightsail_instance.main.is_static_ip
}

variable "aws_lightsail_instance_username" {
  description = "AWS Lightsail instance's username"
  sensitive   = true
  value       = aws_lightsail_instance.main.username
}
