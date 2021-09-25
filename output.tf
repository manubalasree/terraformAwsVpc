# Output variable definitions

output "vpc_id" {
  description = "The ID of the VPC"
  value       = concat(aws_vpc.this.*.id, [""])[0]
}
output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.public.*.id
}