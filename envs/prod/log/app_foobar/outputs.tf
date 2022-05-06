output "log_group_nginx" {
  value = aws_cloudwatch_log_group.nginx.name
}

output "log_group_php" {
  value = aws_cloudwatch_log_group.php.name
}