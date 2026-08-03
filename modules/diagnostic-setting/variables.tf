variable "name" {
  description = "Diagnostic setting name."
  type        = string
}

variable "target_resource_id" {
  description = "Resource ID to monitor."
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "Destination Log Analytics Workspace resource ID."
  type        = string
}

variable "log_category_groups" {
  description = "Diagnostic log category groups to enable."
  type        = set(string)
  default     = ["allLogs"]
}

variable "metric_categories" {
  description = "Metric categories to enable."
  type        = set(string)
  default     = ["AllMetrics"]
}
