module "resource_group_name" {
  source        = "../../modules/naming"
  resource_type = "rg"
  workload      = local.workload
  environment   = local.environment
  region        = local.region_code
  sequence      = 1
}

module "platform_resource_group" {
  source   = "../../modules/resource-group"
  name     = module.resource_group_name.resource_name
  location = var.location
  tags     = local.common_tags
}
