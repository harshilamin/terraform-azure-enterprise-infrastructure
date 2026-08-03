module "action_group_name" {
  source = "../../modules/naming"

  resource_type = "ag"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
}

module "platform_action_group" {
  source = "../../modules/action-group"

  name                = module.action_group_name.resource_name
  resource_group_name = module.platform_resource_group.name
  short_name          = "plat-prod"
  tags                = local.common_tags

  email_receivers = var.monitoring_email == null ? {} : {
    platform-owner = {
      email_address           = var.monitoring_email
      use_common_alert_schema = true
    }
  }
}

module "aks_diagnostics" {
  source = "../../modules/diagnostic-setting"

  name                       = "diag-aks-${local.environment}"
  target_resource_id         = module.aks.id
  log_analytics_workspace_id = module.log_analytics.id
}

module "key_vault_diagnostics" {
  source = "../../modules/diagnostic-setting"

  name                       = "diag-kv-${local.environment}"
  target_resource_id         = module.key_vault.id
  log_analytics_workspace_id = module.log_analytics.id
}

module "container_registry_diagnostics" {
  source = "../../modules/diagnostic-setting"

  name                       = "diag-acr-${local.environment}"
  target_resource_id         = module.container_registry.id
  log_analytics_workspace_id = module.log_analytics.id
}

module "storage_account_diagnostics" {
  source = "../../modules/diagnostic-setting"

  name                       = "diag-storage-${local.environment}"
  target_resource_id         = module.storage_account.id
  log_analytics_workspace_id = module.log_analytics.id

  log_category_groups = []
  metric_categories   = ["Transaction"]
}
