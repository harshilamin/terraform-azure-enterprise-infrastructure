variable "name" {
  description = "Private endpoint name."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the private endpoint."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "subnet_id" {
  description = "Subnet hosting the private endpoint."
  type        = string
}

variable "private_connection_resource_id" {
  description = "Resource ID exposed through Private Link."
  type        = string
}

variable "subresource_names" {
  description = "Private Link subresource names."
  type        = list(string)
}

variable "private_dns_zone_ids" {
  description = "Private DNS zones associated with the endpoint."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags applied to the private endpoint."
  type        = map(string)
  default     = {}
}
