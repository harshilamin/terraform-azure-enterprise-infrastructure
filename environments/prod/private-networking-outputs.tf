output "private_endpoint_subnet_id" {
  description = "Private endpoint subnet resource ID."
  value       = module.private_endpoint_subnet.id
}

output "workload_route_table_id" {
  description = "Workload route table resource ID."
  value       = module.workload_route_table.id
}

output "key_vault_private_endpoint_id" {
  description = "Key Vault private endpoint resource ID."
  value       = module.key_vault_private_endpoint.id
}

output "container_registry_private_endpoint_id" {
  description = "Container Registry private endpoint resource ID."
  value       = module.acr_private_endpoint.id
}
