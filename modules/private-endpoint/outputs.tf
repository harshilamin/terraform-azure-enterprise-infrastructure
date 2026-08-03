output "id" {
  description = "Private endpoint resource ID."
  value       = azurerm_private_endpoint.this.id
}

output "network_interface_ids" {
  description = "Private endpoint network interface IDs."
  value       = azurerm_private_endpoint.this.network_interface
}
