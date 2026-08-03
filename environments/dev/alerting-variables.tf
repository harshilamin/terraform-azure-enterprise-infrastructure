variable "enable_cost_budget" {
  description = "Create a monthly Azure budget for this environment."
  type        = bool
  default     = false
}

variable "monthly_budget_amount" {
  description = "Monthly budget amount in the subscription billing currency."
  type        = number
  default     = 50
}

variable "budget_start_date" {
  description = "Budget start date in RFC3339 format."
  type        = string
  default     = "2026-08-01T00:00:00Z"
}

variable "budget_notification_emails" {
  description = "Optional budget notification email addresses."
  type        = list(string)
  default     = []
}
