locals {
  environment = "dev"
  workload    = "platform"
  region_code = "cus"
  common_tags = {
    Environment         = "Development"
    Application         = "EnterprisePlatform"
    Owner               = var.owner
    ManagedBy           = "Terraform"
    CostCenter          = var.cost_center
    BusinessCriticality = "Medium"
  }
}
