provider "aws" {
  region  = "us-west-2"
}

module "core" {
  source = "../"
  // definition
  container_name               = "ecs-test-app"
  container_image              = "image-test"
  container_cpu                = 512
  container_memory             = 512
  container_memory_reservation = 256
  container_port               = 4400


  vpc_id = "aws-1234556"

  healthcheck_path            = "/"
  task_cpu                    = 512
  alb_name                    = "aws-test-alb"
  ingress_host                = ""
  label_id                    = ""
  security_groups_ids         = []
  subnet_ids                  = []
  tags                        = ""
  alb_security_group          = ""
  environment_variables       = []
  https_listener_arn_priority = 50
  log_configuration_options   = {}
  https_listener_arn          = ""
  task_memory                 = 512
  ecs_cluster_arn             = ""
  environment_secrets         = []




}


