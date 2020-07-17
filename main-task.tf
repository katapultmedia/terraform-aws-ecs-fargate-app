module "alb_service_task" {
  source = "git::https://github.com/cloudposse/terraform-aws-ecs-alb-service-task.git?ref=tags/0.21.0"

  name       = var.label_id
  attributes = [var.container_name]

  alb_security_group        = var.alb_security_group
  container_definition_json = module.definition.json
  container_port            = var.container_port
  desired_count             = 1
  ecs_cluster_arn           = var.ecs_cluster_arn
  launch_type               = "FARGATE"
  network_mode              = "awsvpc"
  subnet_ids                = var.subnet_ids
  task_cpu                  = var.task_cpu
  task_memory               = var.task_memory
  vpc_id                    = var.vpc_id

  deployment_maximum_percent         = 200
  deployment_minimum_healthy_percent = 100
  health_check_grace_period_seconds  = 30

  ecs_load_balancers = [
    {
      elb_name         = ""
      container_name   = var.container_name
      container_port   = var.container_port
      target_group_arn = module.alb_ingress.target_group_arn
    },
  ]

  security_group_ids = var.security_groups_ids
}
