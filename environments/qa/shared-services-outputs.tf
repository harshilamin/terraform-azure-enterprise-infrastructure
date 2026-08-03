output "managed_identity_id" {
  description = "Platform managed identity resource ID."
  value       = module.platform_identity.id
}

output "managed_identity_client_id" {
  description = "Platform managed identity client ID."
  value       = module.platform_identity.client_id
}

output "key_vault_id" {
  description = "Key Vault resource ID."
  value       = module.key_vault.id
}

output "key_vault_uri" {
  description = "Key Vault URI."
  value       = module.key_vault.vault_uri
}

output "storage_account_id" {
  description = "Storage account resource ID."
  value       = module.storage_account.id
}

output "container_registry_id" {
  description = "Container Registry resource ID."
  value       = module.container_registry.id
}

output "container_registry_login_server" {
  description = "Container Registry login server."
  value       = module.container_registry.login_server
}

output "log_analytics_workspace_id" {
  description = "Log Analytics Workspace resource ID."
  value       = module.log_analytics.id
}
