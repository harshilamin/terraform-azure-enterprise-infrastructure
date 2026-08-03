variable "name" {
  description = "Management lock name."
  type        = string
}

variable "scope" {
  description = "Resource ID receiving the management lock."
  type        = string
}

variable "lock_level" {
  description = "Management lock level."
  type        = string
  default     = "CanNotDelete"

  validation {
    condition     = contains(["CanNotDelete", "ReadOnly"], var.lock_level)
    error_message = "lock_level must be CanNotDelete or ReadOnly."
  }
}

variable "notes" {
  description = "Management lock notes."
  type        = string
  default     = "Managed by Terraform."
}
