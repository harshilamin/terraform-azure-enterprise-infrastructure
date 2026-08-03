module "aks_name" {
  source = "../../modules/naming"

  resource_type = "aks"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
}

module "aks" {
  source = "../../modules/aks"

  name                       = module.aks_name.resource_name
  resource_group_name        = module.platform_resource_group.name
  location                   = var.location
  dns_prefix                 = "${local.workload}-${local.environment}"
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  subnet_id                  = module.spoke_aks_subnet.id
  user_assigned_identity_id  = module.platform_identity.id
  log_analytics_workspace_id = module.log_analytics.id

  node_vm_size            = "Standard_D4s_v5"
  node_min_count          = 3
  node_max_count          = 8
  private_cluster_enabled = true

  network_plugin = "azure"
  network_policy = "azure"
  service_cidr   = "10.242.0.0/16"
  dns_service_ip = "10.242.0.10"

  tags = local.common_tags
}

module "aks_acr_pull" {
  source = "../../modules/role-assignment"

  scope                = module.container_registry.id
  role_definition_name = "AcrPull"
  principal_id         = module.aks.kubelet_identity_object_id
  principal_type       = "ServicePrincipal"
}

module "aks_network_contributor" {
  source = "../../modules/role-assignment"

  scope                = module.spoke_aks_subnet.id
  role_definition_name = "Network Contributor"
  principal_id         = module.platform_identity.principal_id
  principal_type       = "ServicePrincipal"
}
