module "resource_group_name" {
  source = "../../modules/naming"

  resource_type = "rg"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
}

module "platform_resource_group" {
  source = "../../modules/resource-group"

  name     = module.resource_group_name.resource_name
  location = var.location
  tags     = local.common_tags
}

module "hub_vnet" {
  source = "../../modules/virtual-network"

  name                = "vnet-hub-${local.environment}-${local.region_code}-001"
  resource_group_name = module.platform_resource_group.name
  location            = var.location
  address_space       = local.hub_address_space
  tags                = local.common_tags
}

module "spoke_vnet" {
  source = "../../modules/virtual-network"

  name                = "vnet-${local.workload}-${local.environment}-${local.region_code}-001"
  resource_group_name = module.platform_resource_group.name
  location            = var.location
  address_space       = local.spoke_address_space
  tags                = local.common_tags
}

module "aks_subnet" {
  source = "../../modules/subnet"

  name                 = "snet-aks-${local.environment}-${local.region_code}-001"
  resource_group_name  = module.platform_resource_group.name
  virtual_network_name = module.spoke_vnet.name
  address_prefixes     = ["10.10.1.0/24"]
  service_endpoints    = ["Microsoft.ContainerRegistry", "Microsoft.KeyVault", "Microsoft.Storage"]
}

module "app_subnet" {
  source = "../../modules/subnet"

  name                 = "snet-app-${local.environment}-${local.region_code}-001"
  resource_group_name  = module.platform_resource_group.name
  virtual_network_name = module.spoke_vnet.name
  address_prefixes     = ["10.10.2.0/24"]
  service_endpoints    = ["Microsoft.KeyVault", "Microsoft.Storage"]
}

module "aks_nsg" {
  source = "../../modules/network-security-group"

  name                = "nsg-aks-${local.environment}-${local.region_code}-001"
  resource_group_name = module.platform_resource_group.name
  location            = var.location
  subnet_id           = module.aks_subnet.id
  tags                = local.common_tags

  security_rules = {
    allow-vnet-inbound = {
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "VirtualNetwork"
      destination_address_prefix = "VirtualNetwork"
      description                = "Allow internal VNet traffic."
    }
    deny-internet-inbound = {
      priority                   = 4096
      direction                  = "Inbound"
      access                     = "Deny"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "Internet"
      destination_address_prefix = "*"
      description                = "Deny unsolicited internet traffic."
    }
  }
}

module "hub_to_spoke" {
  source = "../../modules/vnet-peering"

  name                      = "peer-hub-to-${local.environment}"
  resource_group_name       = module.platform_resource_group.name
  virtual_network_name      = module.hub_vnet.name
  remote_virtual_network_id = module.spoke_vnet.id
}

module "spoke_to_hub" {
  source = "../../modules/vnet-peering"

  name                      = "peer-${local.environment}-to-hub"
  resource_group_name       = module.platform_resource_group.name
  virtual_network_name      = module.spoke_vnet.name
  remote_virtual_network_id = module.hub_vnet.id
}
