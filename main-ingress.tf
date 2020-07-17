module "alb_ingress" {
  source = "git::https://github.com/cloudposse/terraform-aws-alb-ingress.git?ref=tags/0.9.0"

  name       = var.label_id
  attributes = [var.container_name]

  port               = var.container_port
  protocol           = "HTTP"
  slow_start         = 30
  stickiness_enabled = false
  vpc_id             = var.vpc_id

  health_check_enabled             = true
  health_check_interval            = 15
  health_check_matcher             = "200-399"
  health_check_path                = var.healthcheck_path
  health_check_port                = var.healthcheck_port
  health_check_protocol            = "HTTP"
  health_check_timeout             = 10
  health_check_healthy_threshold   = 2
  health_check_unhealthy_threshold = 2

  unauthenticated_listener_arns       = [var.https_listener_arn]
  unauthenticated_listener_arns_count = 1
  unauthenticated_hosts               = compact([var.ingress_host])
  unauthenticated_paths               = compact(coalescelist(var.ingress_paths, [""]))
  unauthenticated_priority            = var.https_listener_arn_priority
}
