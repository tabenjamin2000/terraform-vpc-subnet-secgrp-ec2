output "vpc-id" {
  value       = aws_vpc.prod-vpc.id
  description = "The VPC id output"
}


output "public-subnet-id" {
  value       = aws_subnet.prod-subnet-public-1.id
  description = "Public subnet id output"
}


output "security-group-id" {
  value       = aws_security_group.ssh-allowed.id
  description = "Sec_Group id output"
}

output "server-id" {
  value       = aws_instance.web1.id
  description = "Server id output"
}


