![KM](https://katapultmedia.com/wp-content/uploads/2018/04/km_color_h.jpg)

# terraform-aws-ecs-fargate-app
A Terraform module to easily deploy a Fargate app. Based on the amazing CloudPosse modules.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alb\_name | n/a | `any` | n/a | yes |
| alb\_security\_group | n/a | `any` | n/a | yes |
| container\_cpu | n/a | `any` | n/a | yes |
| container\_image | n/a | `any` | n/a | yes |
| container\_memory | n/a | `any` | n/a | yes |
| container\_memory\_reservation | n/a | `any` | n/a | yes |
| container\_name | n/a | `any` | n/a | yes |
| container\_port | n/a | `any` | n/a | yes |
| ecs\_cluster\_arn | n/a | `any` | n/a | yes |
| environment\_secrets | n/a | <pre>list(object({<br>    name      = string<br>    valueFrom = string<br>  }))</pre> | n/a | yes |
| environment\_variables | n/a | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | n/a | yes |
| healthcheck\_path | n/a | `any` | n/a | yes |
| healthcheck\_port | The port to use to connect with the target. Valid values are either ports 1-65536, or traffic-port. | `string` | `"traffic-port"` | no |
| https\_listener\_arn | n/a | `any` | n/a | yes |
| https\_listener\_arn\_priority | n/a | `number` | n/a | yes |
| ingress\_host | n/a | `any` | n/a | yes |
| ingress\_paths | An array of paths; supports \* as a wildcard | `list(string)` | `[]` | no |
| label\_id | n/a | `any` | n/a | yes |
| log\_configuration\_options | n/a | `map` | n/a | yes |
| repository\_credentials | n/a | `map(string)` | `null` | no |
| security\_groups\_ids | n/a | `list(string)` | n/a | yes |
| subnet\_ids | n/a | `any` | n/a | yes |
| tags | n/a | `any` | n/a | yes |
| task\_cpu | n/a | `any` | n/a | yes |
| task\_memory | n/a | `any` | n/a | yes |
| vpc\_id | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ecs\_exec\_role\_policy\_id | The ECS service role policy ID, in the form of role\_name:role\_policy\_name |
| ecs\_exec\_role\_policy\_name | ECS service role name |
| service\_name | ECS Service name |
| service\_role\_arn | ECS Service role ARN |
| service\_security\_group\_id | Security Group ID of the ECS task |
| task\_definition\_family | ECS task definition family |
| task\_definition\_revision | ECS task definition revision |
| task\_exec\_role\_arn | ECS Task exec role ARN |
| task\_exec\_role\_name | ECS Task role name |
| task\_role\_arn | ECS Task role ARN |
| task\_role\_id | ECS Task role id |
| task\_role\_name | ECS Task role name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->