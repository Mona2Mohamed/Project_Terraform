output "vpc_id" {
    value = aws_vpc.main_vpc.id
}

output "public" {
  value = aws_subnet.public.id
}

output "private" {
  value = aws_subnet.private.id
}