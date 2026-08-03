output "storage_availability_alert_id" {
  description = "Storage availability metric-alert ID."
  value       = module.storage_availability_alert.id
}

output "acr_storage_usage_alert_id" {
  description = "ACR storage usage metric-alert ID."
  value       = module.acr_storage_usage_alert.id
}

output "environment_budget_id" {
  description = "Optional environment budget ID."
  value       = try(module.environment_budget[0].id, null)
}
