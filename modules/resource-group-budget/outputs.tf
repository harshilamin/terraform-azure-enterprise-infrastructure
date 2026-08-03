output "id" {
  description = "Resource group budget resource ID."
  value       = azurerm_consumption_budget_resource_group.this.id
}

output "name" {
  description = "Resource group budget name."
  value       = azurerm_consumption_budget_resource_group.this.name
}
