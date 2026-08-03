variable "name" {
  description = "NSG name."
  type        = string
}
variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}
variable "location" {
  description = "Azure region."
  type        = string
}
variable "subnet_id" {
  description = "Subnet ID to associate."
  type        = string
}
variable "security_rules" {
  description = "NSG rules keyed by rule name."
  type = map(object({
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
    description                = optional(string)
  }))
  default = {}
}
variable "tags" {
  description = "Resource tags."
  type        = map(string)
  default     = {}
}
