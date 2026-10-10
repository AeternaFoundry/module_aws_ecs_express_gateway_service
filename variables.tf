variable "ecs_express_gateway_services" {
  description = <<EOT
Map of ecs_express_gateway_services, attributes below
Required:
    - execution_role_arn
    - infrastructure_role_arn
Optional:
    - cluster
    - cpu
    - health_check_path
    - memory
    - region
    - service_name
    - tags
    - task_role_arn
    - wait_for_steady_state
    - network_configuration (block):
        - security_groups (optional)
        - subnets (optional)
    - primary_container (block):
        - aws_logs_configuration (optional, block):
            - log_group (optional)
            - log_stream_prefix (optional)
        - command (optional)
        - container_port (optional)
        - environment (optional, block):
            - name (required)
            - value (required)
        - image (required)
        - repository_credentials (optional, block):
            - credentials_parameter (required)
        - secret (optional, block):
            - name (required)
            - value_from (required)
    - scaling_target (block):
        - auto_scaling_metric (optional)
        - auto_scaling_target_value (optional)
        - max_task_count (optional)
        - min_task_count (optional)
EOT

  type = map(object({
    execution_role_arn      = string
    infrastructure_role_arn = string
    cluster                 = optional(string)
    cpu                     = optional(string)
    health_check_path       = optional(string)
    memory                  = optional(string)
    region                  = optional(string)
    service_name            = optional(string)
    tags                    = optional(map(string))
    task_role_arn           = optional(string)
    wait_for_steady_state   = optional(bool)
    network_configuration = optional(list(object({
      security_groups = optional(set(string))
      subnets         = optional(set(string))
    })))
    primary_container = optional(list(object({
      aws_logs_configuration = optional(list(object({
        log_group         = optional(string)
        log_stream_prefix = optional(string)
      })))
      command        = optional(list(string))
      container_port = optional(number)
      environment = optional(list(object({
        name  = string
        value = string
      })))
      image = string
      repository_credentials = optional(list(object({
        credentials_parameter = string
      })))
      secret = optional(list(object({
        name       = string
        value_from = string
      })))
    })))
    scaling_target = optional(list(object({
      auto_scaling_metric       = optional(string)
      auto_scaling_target_value = optional(number)
      max_task_count            = optional(number)
      min_task_count            = optional(number)
    })))
  }))
}

