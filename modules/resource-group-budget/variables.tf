variable "name" {
  description = "Budget name."
  type        = string
}

variable "resource_group_id" {
  description = "Resource group resource ID."
  type        = string
}

variable "amount" {
  description = "Monthly budget amount."
  type        = number

  validation {
    condition     = var.amount > 0
    error_message = "Budget amount must be greater than zero."
  }
}

variable "start_date" {
  description = "Budget start date in RFC3339 format."
  type        = string
}

variable "end_date" {
  description = "Optional budget end date in RFC3339 format."
  type        = string
  default     = null
}

variable "threshold" {
  description = "Actual-cost notification threshold percentage."
  type        = number
  default     = 80

  validation {
    condition     = var.threshold >= 0 && var.threshold <= 1000
    error_message = "threshold must be between 0 and 1000."
  }
}

variable "contact_emails" {
  description = "Email addresses notified when the threshold is exceeded."
  type        = list(string)
  default     = []
}

variable "contact_group_ids" {
  description = "Azure Monitor Action Group IDs notified by the budget."
  type        = list(string)
  default     = []
}
