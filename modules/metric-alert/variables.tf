variable "name" {
  description = "Azure Monitor metric alert name."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the metric alert."
  type        = string
}

variable "scopes" {
  description = "Resource IDs monitored by the alert."
  type        = list(string)

  validation {
    condition     = length(var.scopes) > 0
    error_message = "At least one alert scope is required."
  }
}

variable "description" {
  description = "Metric alert description."
  type        = string
}

variable "severity" {
  description = "Alert severity from 0 (critical) to 4 (verbose)."
  type        = number
  default     = 2

  validation {
    condition     = var.severity >= 0 && var.severity <= 4
    error_message = "severity must be between 0 and 4."
  }
}

variable "enabled" {
  description = "Enable the metric alert."
  type        = bool
  default     = true
}

variable "frequency" {
  description = "Alert evaluation frequency."
  type        = string
  default     = "PT5M"
}

variable "window_size" {
  description = "Metric evaluation window."
  type        = string
  default     = "PT15M"
}

variable "metric_namespace" {
  description = "Azure Monitor metric namespace."
  type        = string
}

variable "metric_name" {
  description = "Azure Monitor metric name."
  type        = string
}

variable "aggregation" {
  description = "Metric aggregation."
  type        = string
  default     = "Average"

  validation {
    condition     = contains(["Average", "Count", "Minimum", "Maximum", "Total"], var.aggregation)
    error_message = "Use a supported metric aggregation."
  }
}

variable "operator" {
  description = "Comparison operator."
  type        = string
  default     = "GreaterThan"

  validation {
    condition = contains([
      "Equals",
      "NotEquals",
      "GreaterThan",
      "GreaterThanOrEqual",
      "LessThan",
      "LessThanOrEqual",
    ], var.operator)

    error_message = "Use a supported metric alert operator."
  }
}

variable "threshold" {
  description = "Metric threshold."
  type        = number
}

variable "action_group_ids" {
  description = "Action Group resource IDs invoked by the alert."
  type        = set(string)
  default     = []
}

variable "tags" {
  description = "Tags applied to the metric alert."
  type        = map(string)
  default     = {}
}
