variable "name" {
  description = "Subnet name."
  type        = string
}
variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}
variable "virtual_network_name" {
  description = "Parent virtual network name."
  type        = string
}
variable "address_prefixes" {
  description = "Subnet CIDR blocks."
  type        = list(string)
}
variable "service_endpoints" {
  description = "Optional Azure service endpoints."
  type        = list(string)
  default     = []
}
