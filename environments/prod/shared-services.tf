module "managed_identity_name" {
  source = "../../modules/naming"

  resource_type = "id"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
}

module "key_vault_name" {
  source = "../../modules/naming"

  resource_type = "kv"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
}

module "storage_name" {
  source = "../../modules/naming"

  resource_type = "st"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
  separator     = ""
}

module "acr_name" {
  source = "../../modules/naming"

  resource_type = "acr"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
  separator     = ""
}

module "log_analytics_name" {
  source = "../../modules/naming"

  resource_type = "law"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
}

module "platform_identity" {
  source = "../../modules/managed-identity"

  name                = module.managed_identity_name.resource_name
  resource_group_name = module.platform_resource_group.name
  location            = var.location
  tags                = local.common_tags
}

module "key_vault" {
  source = "../../modules/key-vault"

  name                          = module.key_vault_name.resource_name
  resource_group_name           = module.platform_resource_group.name
  location                      = var.location
  tenant_id                     = data.azurerm_client_config.current.tenant_id
  sku_name                      = "standard"
  purge_protection_enabled      = true
  soft_delete_retention_days    = 90
  public_network_access_enabled = false
  tags                          = local.common_tags
}

module "storage_account" {
  source = "../../modules/storage-account"

  name                          = module.storage_name.resource_name
  resource_group_name           = module.platform_resource_group.name
  location                      = var.location
  account_tier                  = "Standard"
  account_replication_type      = "ZRS"
  public_network_access_enabled = false
  tags                          = local.common_tags
}

module "container_registry" {
  source = "../../modules/container-registry"

  name                          = module.acr_name.resource_name
  resource_group_name           = module.platform_resource_group.name
  location                      = var.location
  sku                           = "Premium"
  public_network_access_enabled = false
  tags                          = local.common_tags
}

module "log_analytics" {
  source = "../../modules/log-analytics"

  name                = module.log_analytics_name.resource_name
  resource_group_name = module.platform_resource_group.name
  location            = var.location
  retention_in_days   = 90
  tags                = local.common_tags
}
