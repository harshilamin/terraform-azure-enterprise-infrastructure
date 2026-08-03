locals {
  environment      = "prod"
  environment_name = "Production"
  workload         = "platform"
  region_code      = "cus"

  hub_address_space   = ["10.0.0.0/16"]
  spoke_address_space = ["10.30.0.0/16"]

  common_tags = {
    Environment         = local.environment_name
    Application         = "EnterprisePlatform"
    Owner               = var.owner
    ManagedBy           = "Terraform"
    CostCenter          = var.cost_center
    DataClassification  = "Internal"
    BusinessCriticality = "High"
    Repository          = "terraform-azure-enterprise-infrastructure"
  }
}
