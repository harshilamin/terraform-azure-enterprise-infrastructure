module "resource_group" {
  source = "../../modules/resource-group"

  name     = "rg-network-example-dev-cus-001"
  location = "Central US"

  tags = {
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}

module "virtual_network" {
  source = "../../modules/virtual-network"

  name                = "vnet-network-example-dev-cus-001"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  address_space       = ["10.50.0.0/16"]

  tags = {
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}

module "application_subnet" {
  source = "../../modules/subnet"

  name                 = "snet-app-dev-cus-001"
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  address_prefixes     = ["10.50.1.0/24"]
}

output "virtual_network_id" {
  value = module.virtual_network.id
}

output "application_subnet_id" {
  value = module.application_subnet.id
}
