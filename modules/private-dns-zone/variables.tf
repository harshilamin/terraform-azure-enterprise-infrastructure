variable "name" {
  description = "Private DNS zone name."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the private DNS zone."
  type        = string
}

variable "virtual_network_links" {
  description = "VNet links keyed by link name."
  type = map(object({
    virtual_network_id   = string
    registration_enabled = optional(bool, false)
  }))
  default = {}
}

variable "tags" {
  description = "Tags applied to the private DNS zone."
  type        = map(string)
  default     = {}
}
