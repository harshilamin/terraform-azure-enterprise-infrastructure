variable "name" {
  description = "Peering name."
  type        = string
}
variable "resource_group_name" {
  description = "Local VNet resource group."
  type        = string
}
variable "virtual_network_name" {
  description = "Local VNet name."
  type        = string
}
variable "remote_virtual_network_id" {
  description = "Remote VNet ID."
  type        = string
}
