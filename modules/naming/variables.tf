variable "resource_type" {
  description = "Short Azure resource abbreviation."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{2,10}$", var.resource_type))
    error_message = "Use 2-10 lowercase alphanumeric characters."
  }
}

variable "workload" {
  description = "Workload identifier."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9-]{2,20}$", var.workload))
    error_message = "Use 2-20 lowercase alphanumeric characters or hyphens."
  }
}

variable "environment" {
  description = "Deployment environment."
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Environment must be dev, qa, or prod."
  }
}

variable "region" {
  description = "Short Azure region code."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{2,10}$", var.region))
    error_message = "Use 2-10 lowercase alphanumeric characters."
  }
}

variable "sequence" {
  description = "Resource sequence number."
  type        = number
  default     = 1

  validation {
    condition     = var.sequence >= 1 && var.sequence <= 999
    error_message = "Sequence must be between 1 and 999."
  }
}

variable "separator" {
  description = "Name component separator."
  type        = string
  default     = "-"

  validation {
    condition     = contains(["-", ""], var.separator)
    error_message = "Separator must be a hyphen or an empty string."
  }
}
