module "resource_group_name" {
  source = "../../modules/naming"

  resource_type = "rg"
  workload      = "platform"
  environment   = "dev"
  region        = "cus"
  sequence      = 1
}

output "resource_group_name" {
  value = module.resource_group_name.resource_name
}
