resource "aws_ecs_express_gateway_service" "ecs_express_gateway_services" {
  for_each = var.ecs_express_gateway_services

  execution_role_arn      = each.value.execution_role_arn
  infrastructure_role_arn = each.value.infrastructure_role_arn
  cluster                 = each.value.cluster
  cpu                     = each.value.cpu
  health_check_path       = each.value.health_check_path
  memory                  = each.value.memory
  region                  = each.value.region
  service_name            = each.value.service_name
  tags                    = each.value.tags
  task_role_arn           = each.value.task_role_arn
  wait_for_steady_state   = each.value.wait_for_steady_state

  dynamic "network_configuration" {
    for_each = each.value.network_configuration != null ? each.value.network_configuration : []
    content {
      security_groups = network_configuration.value.security_groups
      subnets         = network_configuration.value.subnets
    }
  }

  dynamic "primary_container" {
    for_each = each.value.primary_container != null ? each.value.primary_container : []
    content {
      dynamic "aws_logs_configuration" {
        for_each = primary_container.value.aws_logs_configuration != null ? primary_container.value.aws_logs_configuration : []
        content {
          log_group         = aws_logs_configuration.value.log_group
          log_stream_prefix = aws_logs_configuration.value.log_stream_prefix
        }
      }
      command        = primary_container.value.command
      container_port = primary_container.value.container_port
      dynamic "environment" {
        for_each = primary_container.value.environment != null ? primary_container.value.environment : []
        content {
          name  = environment.value.name
          value = environment.value.value
        }
      }
      image = primary_container.value.image
      dynamic "repository_credentials" {
        for_each = primary_container.value.repository_credentials != null ? primary_container.value.repository_credentials : []
        content {
          credentials_parameter = repository_credentials.value.credentials_parameter
        }
      }
      dynamic "secret" {
        for_each = primary_container.value.secret != null ? primary_container.value.secret : []
        content {
          name       = secret.value.name
          value_from = secret.value.value_from
        }
      }
    }
  }

  dynamic "scaling_target" {
    for_each = each.value.scaling_target != null ? each.value.scaling_target : []
    content {
      auto_scaling_metric       = scaling_target.value.auto_scaling_metric
      auto_scaling_target_value = scaling_target.value.auto_scaling_target_value
      max_task_count            = scaling_target.value.max_task_count
      min_task_count            = scaling_target.value.min_task_count
    }
  }
}

