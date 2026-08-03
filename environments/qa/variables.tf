variable "location" {
  description = "Primary Azure region."
  type        = string
  default     = "Central US"
}

variable "owner" {
  description = "Responsible owner."
  type        = string
  default     = "HarshilAmin"
}

variable "cost_center" {
  description = "Cost allocation identifier."
  type        = string
  default     = "CC-1001"
}
