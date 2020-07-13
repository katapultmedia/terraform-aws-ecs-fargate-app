data "aws_iam_policy_document" "ssm_exec" {
  statement {
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "ssm:GetParameters",
      "secretsmanager:GetSecretValue",
      "kms:Decrypt",
    ]
  }
}

resource "aws_iam_role_policy" "hasura_exec_ssm" {
  name   = "${module.alb_service_task_hasura.ecs_exec_role_policy_name}-ssm-policy"
  policy = data.aws_iam_policy_document.ssm_exec.json
  role   = module.alb_service_task_hasura.ecs_exec_role_policy_name
}

