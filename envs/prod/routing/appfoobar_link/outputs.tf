output "enable_alb" {
  value = var.enable_alb
}

output "alb" {
  value = aws_lb.this[0]
}