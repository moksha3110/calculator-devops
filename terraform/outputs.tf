output "alb_dns_name" {
  description = "Application Load Balancer DNS"

  value = aws_lb.calculator_alb.dns_name
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  value = aws_ecs_service.calculator_service.name
}