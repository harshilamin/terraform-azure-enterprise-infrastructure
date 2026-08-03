output "resource_name" { value = local.resource_name }
output "components" {
  value = {
    resource_type = var.resource_type
    workload      = var.workload
    environment   = var.environment
    region        = var.region
    sequence      = format("%03d", var.sequence)
  }
}
