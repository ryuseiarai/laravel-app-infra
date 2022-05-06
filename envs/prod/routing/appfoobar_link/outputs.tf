output "enable_alb" {
  value = var.enable_alb
}

output "alb" {
  value = aws_lb.this[0]
}

output "lb_target_group_foobar_arn" {
  value = aws_lb_target_group.foobar.arn
}