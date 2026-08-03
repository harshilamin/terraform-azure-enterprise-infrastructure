variable "name" {
  description = "Azure Monitor action group name."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the action group."
  type        = string
}

variable "short_name" {
  description = "Short action group name used in notifications."
  type        = string

  validation {
    condition     = length(var.short_name) <= 12
    error_message = "short_name must contain no more than 12 characters."
  }
}

variable "email_receivers" {
  description = "Email receivers keyed by receiver name."
  type = map(object({
    email_address           = string
    use_common_alert_schema = optional(bool, true)
  }))
  default = {}
}

variable "tags" {
  description = "Tags applied to the action group."
  type        = map(string)
  default     = {}
}
