resource "aws_ecs_task_definition" "task_definition" {
  family = "task_definition_cloud_test_gns"
  task_role_arn      = aws_iam_role.task_definition_role.arn
  execution_role_arn = aws_iam_role.ecs_task_execution_role.arn
  network_mode       = "bridge"
  cpu                = 0.25
  memory             = 0.5
  runtime_platform {
    operating_system_family = "LINUX"
    cpu_architecture        = "ARM64"
  }
}