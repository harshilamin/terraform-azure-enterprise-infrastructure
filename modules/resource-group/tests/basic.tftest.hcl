mock_provider "azurerm" {}

run "creates_resource_group" {
  command = plan

  variables {
    name     = "rg-platform-dev-cus-001"
    location = "Central US"

    tags = {
      Environment = "Development"
      ManagedBy   = "Terraform"
    }
  }

  assert {
    condition     = azurerm_resource_group.this.name == "rg-platform-dev-cus-001"
    error_message = "The resource-group name was not passed correctly."
  }

  assert {
    condition     = azurerm_resource_group.this.location == "Central US"
    error_message = "The resource-group location was not passed correctly."
  }

  assert {
    condition     = azurerm_resource_group.this.tags["ManagedBy"] == "Terraform"
    error_message = "The expected ManagedBy tag is missing."
  }
}
