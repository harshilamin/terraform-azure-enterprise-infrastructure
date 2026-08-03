variable "name" {
  description = "User-assigned managed identity name."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the identity."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "tags" {
  description = "Tags applied to the managed identity."
  type        = map(string)
  default     = {}
}
