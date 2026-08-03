locals {
  environment = "qa"
  workload    = "platform"
  region_code = "cus"
  common_tags = {
    Environment         = "QA"
    Application         = "EnterprisePlatform"
    Owner               = var.owner
    ManagedBy           = "Terraform"
    CostCenter          = var.cost_center
    BusinessCriticality = "Medium"
  }
}
