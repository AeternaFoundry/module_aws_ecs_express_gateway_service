output "ecs_express_gateway_services_cluster" {
  description = "Map of cluster values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.cluster if v.cluster != null && length(v.cluster) > 0 }
}
output "ecs_express_gateway_services_cpu" {
  description = "Map of cpu values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.cpu if v.cpu != null && length(v.cpu) > 0 }
}
output "ecs_express_gateway_services_current_deployment" {
  description = "Map of current_deployment values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.current_deployment if v.current_deployment != null && length(v.current_deployment) > 0 }
}
output "ecs_express_gateway_services_execution_role_arn" {
  description = "Map of execution_role_arn values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.execution_role_arn if v.execution_role_arn != null && length(v.execution_role_arn) > 0 }
}
output "ecs_express_gateway_services_health_check_path" {
  description = "Map of health_check_path values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.health_check_path if v.health_check_path != null && length(v.health_check_path) > 0 }
}
output "ecs_express_gateway_services_infrastructure_role_arn" {
  description = "Map of infrastructure_role_arn values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.infrastructure_role_arn if v.infrastructure_role_arn != null && length(v.infrastructure_role_arn) > 0 }
}
output "ecs_express_gateway_services_ingress_paths" {
  description = "Map of ingress_paths values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.ingress_paths if v.ingress_paths != null && length(v.ingress_paths) > 0 }
}
output "ecs_express_gateway_services_memory" {
  description = "Map of memory values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.memory if v.memory != null && length(v.memory) > 0 }
}
output "ecs_express_gateway_services_network_configuration" {
  description = "Map of network_configuration values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.network_configuration if v.network_configuration != null && length(v.network_configuration) > 0 }
}
output "ecs_express_gateway_services_primary_container" {
  description = "Map of primary_container values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.primary_container if v.primary_container != null && length(v.primary_container) > 0 }
}
output "ecs_express_gateway_services_region" {
  description = "Map of region values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecs_express_gateway_services_scaling_target" {
  description = "Map of scaling_target values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.scaling_target if v.scaling_target != null && length(v.scaling_target) > 0 }
}
output "ecs_express_gateway_services_service_arn" {
  description = "Map of service_arn values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.service_arn if v.service_arn != null && length(v.service_arn) > 0 }
}
output "ecs_express_gateway_services_service_name" {
  description = "Map of service_name values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "ecs_express_gateway_services_service_revision_arn" {
  description = "Map of service_revision_arn values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.service_revision_arn if v.service_revision_arn != null && length(v.service_revision_arn) > 0 }
}
output "ecs_express_gateway_services_tags" {
  description = "Map of tags values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ecs_express_gateway_services_tags_all" {
  description = "Map of tags_all values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ecs_express_gateway_services_task_role_arn" {
  description = "Map of task_role_arn values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.task_role_arn if v.task_role_arn != null && length(v.task_role_arn) > 0 }
}
output "ecs_express_gateway_services_wait_for_steady_state" {
  description = "Map of wait_for_steady_state values across all ecs_express_gateway_services, keyed the same as var.ecs_express_gateway_services"
  value       = { for k, v in aws_ecs_express_gateway_service.ecs_express_gateway_services : k => v.wait_for_steady_state if v.wait_for_steady_state != null }
}

