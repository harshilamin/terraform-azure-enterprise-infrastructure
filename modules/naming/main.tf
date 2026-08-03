locals {
  resource_name = join(var.separator, [
    var.resource_type,
    var.workload,
    var.environment,
    var.region,
    format("%03d", var.sequence)
  ])
}
