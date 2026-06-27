output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "vpc_arn" {
  description = "VPC ARN"
  value       = aws_vpc.this.arn
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public.id
}

output "private_app_subnet_id" {
  description = "Private Application Subnet ID"
  value       = aws_subnet.private_app.id
}

output "private_db_subnet_id" {
  description = "Private Database Subnet ID"
  value       = aws_subnet.private_db.id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.this.id
}

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = var.create_nat_gateway ? aws_nat_gateway.this[0].id : null
}

output "nat_gateway_public_ip" {
  description = "NAT Gateway Public IP"
  value       = var.create_nat_gateway ? aws_eip.nat[0].public_ip : null
}
