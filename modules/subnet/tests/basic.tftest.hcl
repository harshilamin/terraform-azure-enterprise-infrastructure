mock_provider "azurerm" {}

run "creates_standard_subnet" {
  command = plan

  variables {
    name                 = "snet-app-dev-cus-001"
    resource_group_name  = "rg-platform-dev-cus-001"
    virtual_network_name = "vnet-platform-dev-cus-001"
    address_prefixes     = ["10.10.2.0/24"]

    service_endpoints = [
      "Microsoft.KeyVault",
      "Microsoft.Storage",
    ]
  }

  assert {
    condition     = azurerm_subnet.this.name == "snet-app-dev-cus-001"
    error_message = "The subnet name was not passed correctly."
  }

  assert {
    condition     = azurerm_subnet.this.address_prefixes[0] == "10.10.2.0/24"
    error_message = "The subnet address prefix is incorrect."
  }
}

run "creates_private_endpoint_subnet" {
  command = plan

  variables {
    name                              = "snet-private-endpoints-prod-cus-001"
    resource_group_name               = "rg-platform-prod-cus-001"
    virtual_network_name              = "vnet-platform-prod-cus-001"
    address_prefixes                  = ["10.30.3.0/24"]
    private_endpoint_network_policies = "Disabled"
  }

  assert {
    condition     = azurerm_subnet.this.private_endpoint_network_policies == "Disabled"
    error_message = "Private endpoint network policies were not disabled."
  }
}
