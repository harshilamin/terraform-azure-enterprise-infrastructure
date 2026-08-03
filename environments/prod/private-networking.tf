module "private_endpoint_subnet" {
  source = "../../modules/subnet"

  name                 = "snet-private-endpoints-${local.environment}-${local.region_code}-001"
  resource_group_name  = module.platform_resource_group.name
  virtual_network_name = module.spoke_vnet.name
  address_prefixes     = local.private_endpoint_subnet_prefix

  private_endpoint_network_policies = "Disabled"
}

module "workload_route_table_name" {
  source = "../../modules/naming"

  resource_type = "rt"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
}

module "workload_route_table" {
  source = "../../modules/route-table"

  name                = module.workload_route_table_name.resource_name
  resource_group_name = module.platform_resource_group.name
  location            = var.location
  tags                = local.common_tags

  subnet_ids = [
    module.spoke_aks_subnet.id,
    module.spoke_app_subnet.id,
  ]
}

module "key_vault_private_dns" {
  source = "../../modules/private-dns-zone"

  name                = local.private_dns_zones.key_vault
  resource_group_name = module.platform_resource_group.name
  tags                = local.common_tags

  virtual_network_links = {
    hub = {
      virtual_network_id = module.hub_vnet.id
    }
    spoke = {
      virtual_network_id = module.spoke_vnet.id
    }
  }
}

module "acr_private_dns" {
  source = "../../modules/private-dns-zone"

  name                = local.private_dns_zones.acr
  resource_group_name = module.platform_resource_group.name
  tags                = local.common_tags

  virtual_network_links = {
    hub = {
      virtual_network_id = module.hub_vnet.id
    }
    spoke = {
      virtual_network_id = module.spoke_vnet.id
    }
  }
}

module "blob_private_dns" {
  source = "../../modules/private-dns-zone"

  name                = local.private_dns_zones.blob
  resource_group_name = module.platform_resource_group.name
  tags                = local.common_tags

  virtual_network_links = {
    hub = {
      virtual_network_id = module.hub_vnet.id
    }
    spoke = {
      virtual_network_id = module.spoke_vnet.id
    }
  }
}

module "file_private_dns" {
  source = "../../modules/private-dns-zone"

  name                = local.private_dns_zones.file
  resource_group_name = module.platform_resource_group.name
  tags                = local.common_tags

  virtual_network_links = {
    hub = {
      virtual_network_id = module.hub_vnet.id
    }
    spoke = {
      virtual_network_id = module.spoke_vnet.id
    }
  }
}

module "key_vault_private_endpoint" {
  source = "../../modules/private-endpoint"

  name                           = "pe-kv-${local.environment}-${local.region_code}-001"
  resource_group_name            = module.platform_resource_group.name
  location                       = var.location
  subnet_id                      = module.private_endpoint_subnet.id
  private_connection_resource_id = module.key_vault.id
  subresource_names              = ["vault"]
  private_dns_zone_ids           = [module.key_vault_private_dns.id]
  tags                           = local.common_tags
}

module "acr_private_endpoint" {
  source = "../../modules/private-endpoint"

  name                           = "pe-acr-${local.environment}-${local.region_code}-001"
  resource_group_name            = module.platform_resource_group.name
  location                       = var.location
  subnet_id                      = module.private_endpoint_subnet.id
  private_connection_resource_id = module.container_registry.id
  subresource_names              = ["registry"]
  private_dns_zone_ids           = [module.acr_private_dns.id]
  tags                           = local.common_tags
}

module "storage_blob_private_endpoint" {
  source = "../../modules/private-endpoint"

  name                           = "pe-stblob-${local.environment}-${local.region_code}-001"
  resource_group_name            = module.platform_resource_group.name
  location                       = var.location
  subnet_id                      = module.private_endpoint_subnet.id
  private_connection_resource_id = module.storage_account.id
  subresource_names              = ["blob"]
  private_dns_zone_ids           = [module.blob_private_dns.id]
  tags                           = local.common_tags
}

module "storage_file_private_endpoint" {
  source = "../../modules/private-endpoint"

  name                           = "pe-stfile-${local.environment}-${local.region_code}-001"
  resource_group_name            = module.platform_resource_group.name
  location                       = var.location
  subnet_id                      = module.private_endpoint_subnet.id
  private_connection_resource_id = module.storage_account.id
  subresource_names              = ["file"]
  private_dns_zone_ids           = [module.file_private_dns.id]
  tags                           = local.common_tags
}
