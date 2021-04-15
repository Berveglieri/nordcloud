output "security_group_id" {
  value = aws_security_group.default-sg.id
}

output "security_group_arn" {
  value = aws_security_group.default-sg.arn
}

output "security_group_name" {
  value = aws_security_group.default-sg.name
}