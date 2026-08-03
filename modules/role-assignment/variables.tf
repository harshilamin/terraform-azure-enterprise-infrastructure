variable "scope" {
  description = "Azure resource ID used as the role assignment scope."
  type        = string
}

variable "role_definition_name" {
  description = "Built-in Azure role name."
  type        = string
}

variable "principal_id" {
  description = "Object ID of the principal receiving the role."
  type        = string
}

variable "principal_type" {
  description = "Optional principal type."
  type        = string
  default     = "ServicePrincipal"
}
