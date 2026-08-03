output "resource_group_name" {
  value = module.platform_resource_group.name
}
output "hub_vnet_id" {
  value = module.hub_vnet.id
}
output "spoke_vnet_id" {
  value = module.spoke_vnet.id
}
output "aks_subnet_id" {
  value = module.aks_subnet.id
}
output "application_subnet_id" {
  value = module.app_subnet.id
}
