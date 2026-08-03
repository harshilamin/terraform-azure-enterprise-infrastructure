module "platform_resource_group_lock" {
  source = "../../modules/management-lock"

  name       = "lock-platform-prod"
  scope      = module.platform_resource_group.id
  lock_level = "CanNotDelete"
  notes      = "Protects the Production platform resource group from accidental deletion."
}
