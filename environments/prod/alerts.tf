module "storage_availability_alert" {
  source = "../../modules/metric-alert"

  name                = "alert-storage-availability-${local.environment}"
  resource_group_name = module.platform_resource_group.name
  scopes              = [module.storage_account.id]
  description         = "Storage availability is below the expected threshold."
  severity            = 1
  frequency           = "PT5M"
  window_size         = "PT15M"

  metric_namespace = "Microsoft.Storage/storageAccounts"
  metric_name      = "Availability"
  aggregation      = "Average"
  operator         = "LessThan"
  threshold        = 99

  action_group_ids = [module.platform_action_group.id]
  tags             = local.common_tags
}

module "acr_storage_usage_alert" {
  source = "../../modules/metric-alert"

  name                = "alert-acr-storage-${local.environment}"
  resource_group_name = module.platform_resource_group.name
  scopes              = [module.container_registry.id]
  description         = "Container Registry storage usage exceeded the environment threshold."
  severity            = 2
  frequency           = "PT15M"
  window_size         = "PT1H"

  metric_namespace = "Microsoft.ContainerRegistry/registries"
  metric_name      = "StorageUsed"
  aggregation      = "Average"
  operator         = "GreaterThan"
  threshold        = 200 * 1024 * 1024 * 1024

  action_group_ids = [module.platform_action_group.id]
  tags             = local.common_tags
}

module "environment_budget" {
  count  = var.enable_cost_budget ? 1 : 0
  source = "../../modules/resource-group-budget"

  name              = "budget-${local.environment}-monthly"
  resource_group_id = module.platform_resource_group.id
  amount            = var.monthly_budget_amount
  start_date        = var.budget_start_date
  threshold         = 70

  contact_emails    = var.budget_notification_emails
  contact_group_ids = [module.platform_action_group.id]
}
