output "launch_arn" {
  value = aws_launch_configuration.config.arn
}

output "launch_name" {
  value = aws_launch_configuration.config.name
}