module "spoke_app_subnet" {
  source = "../../modules/subnet"

  name                 = "snet-app-${local.environment}-${local.region_code}-001"
  resource_group_name  = module.platform_resource_group.name
  virtual_network_name = module.spoke_vnet.name
  address_prefixes     = local.spoke_subnets.app

  service_endpoints = [
    "Microsoft.KeyVault",
    "Microsoft.Storage",
  ]
}
