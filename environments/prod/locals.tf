locals {
  environment = "prod"
  workload    = "platform"
  region_code = "cus"
  common_tags = {
    Environment         = "Production"
    Application         = "EnterprisePlatform"
    Owner               = var.owner
    ManagedBy           = "Terraform"
    CostCenter          = var.cost_center
    BusinessCriticality = "High"
  }
}
