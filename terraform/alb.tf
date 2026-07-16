# ----------------------------------
# Application Load Balancer
# ----------------------------------

resource "aws_lb" "calculator_alb" {
  name               = "${var.project_name}-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [aws_security_group.alb_sg.id]

  subnets = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]

  tags = {
    Name = "${var.project_name}-alb"
  }
}

# ----------------------------------
# Target Group
# ----------------------------------

resource "aws_lb_target_group" "calculator_tg" {
  name        = "${var.project_name}-tg"
  port        = var.container_port
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.main.id

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    healthy_threshold   = 2
    unhealthy_threshold = 5
    interval            = 30
    timeout             = 5
  }
}

# ----------------------------------
# Listener
# ----------------------------------

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.calculator_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.calculator_tg.arn
  }
}