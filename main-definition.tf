module "definition" {
  source = "git::https://github.com/cloudposse/terraform-aws-ecs-container-definition.git?ref=tags/0.23.0"

  container_name               = var.container_name
  container_image              = var.container_image
  container_cpu                = var.container_cpu
  container_memory             = var.container_memory
  container_memory_reservation = var.container_memory_reservation
  environment                  = var.environment_variables
  essential                    = true
  repository_credentials       = var.repository_credentials
  secrets                      = var.environment_secrets

  log_configuration = {
    "logDriver"     = "awslogs"
    "secretOptions" = null
    "options"       = var.log_configuration_options
  }

  port_mappings = [
    {
      containerPort = var.container_port
      hostPort      = var.container_port
      protocol      = "tcp"
    },
  ]
}
