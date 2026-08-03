# Route Table Module

Creates an Azure route table, optional standalone routes, and subnet associations.

Inline routes are intentionally avoided so the module does not mix
`azurerm_route_table` inline routes with standalone `azurerm_route` resources.
