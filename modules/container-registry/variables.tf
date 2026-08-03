variable "name" {
  description = "Globally unique Azure Container Registry name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9]{5,50}$", var.name))
    error_message = "ACR names must contain 5-50 alphanumeric characters."
  }
}

variable "resource_group_name" {
  description = "Resource group containing the registry."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "sku" {
  description = "Container Registry SKU."
  type        = string
  default     = "Basic"

  validation {
    condition     = contains(["Basic", "Standard", "Premium"], var.sku)
    error_message = "sku must be Basic, Standard, or Premium."
  }
}

variable "public_network_access_enabled" {
  description = "Allow public network access."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags applied to the registry."
  type        = map(string)
  default     = {}
}
