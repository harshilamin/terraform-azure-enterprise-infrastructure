resource "azurerm_consumption_budget_resource_group" "this" {
  name              = var.name
  resource_group_id = var.resource_group_id
  amount            = var.amount
  time_grain        = "Monthly"

  time_period {
    start_date = var.start_date
    end_date   = var.end_date
  }

  notification {
    enabled        = true
    threshold      = var.threshold
    operator       = "GreaterThan"
    threshold_type = "Actual"

    contact_emails = var.contact_emails
    contact_groups = var.contact_group_ids
  }
}
