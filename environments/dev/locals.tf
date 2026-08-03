locals {
  environment      = "dev"
  environment_name = "Development"
  workload         = "platform"
  region_code      = "cus"

  hub_address_space   = ["10.0.0.0/16"]
  spoke_address_space = ["10.10.0.0/16"]

  common_tags = {
    Environment         = local.environment_name
    Application         = "EnterprisePlatform"
    Owner               = var.owner
    ManagedBy           = "Terraform"
    CostCenter          = var.cost_center
    DataClassification  = "Internal"
    BusinessCriticality = "Medium"
    Repository          = "terraform-azure-enterprise-infrastructure"
  }
}
