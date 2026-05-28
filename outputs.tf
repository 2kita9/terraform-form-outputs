output "vpc_id" {
  description = "value of vpc"
  value       = aws_vpc.main.id

}

output "vpc_cidr" {
  description = "cidr blocks"
  value       = aws_vpc.main.cidr_block

}

output "public_subnet_ids" {
  description = "public subnets all"
  value       = aws_subnet.public[*].id

}

output "public_subnet_cidr_block" {
  description = "cidr block of public subs"
  value       = aws_subnet.public[*].cidr_block

}

output "public_subnet_availability_zone" {
  description = "availability zones"
  value       = aws_subnet.public[*].availability_zone

}

output "internet_gateway_id" {
  description = "id of the internet gateway"
  value       = aws_internet_gateway.igw.id

}

output "routing_table_id" {
  description = "id of the routing table"
  value       = aws_route_table.route_table.id

}