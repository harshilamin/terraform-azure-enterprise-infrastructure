module "name" {
  source        = "../../modules/naming"
  resource_type = "rg"
  workload      = "example"
  environment   = "dev"
  region        = "cus"
  sequence      = 1
}

module "resource_group" {
  source   = "../../modules/resource-group"
  name     = module.name.resource_name
  location = "Central US"
  tags = {
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}
