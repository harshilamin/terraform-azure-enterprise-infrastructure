output "monitor_action_group_id" {
  description = "Azure Monitor action group resource ID."
  value       = module.platform_action_group.id
}

output "aks_diagnostic_setting_id" {
  description = "AKS diagnostic setting resource ID."
  value       = module.aks_diagnostics.id
}
