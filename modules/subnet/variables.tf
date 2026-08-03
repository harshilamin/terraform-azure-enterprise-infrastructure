variable "name" {
  description = "Subnet name."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the virtual network."
  type        = string
}

variable "virtual_network_name" {
  description = "Parent virtual network name."
  type        = string
}

variable "address_prefixes" {
  description = "CIDR ranges assigned to the subnet."
  type        = list(string)

  validation {
    condition     = length(var.address_prefixes) > 0
    error_message = "At least one subnet address prefix must be supplied."
  }
}

variable "service_endpoints" {
  description = "Optional Azure service endpoints."
  type        = list(string)
  default     = []
}

variable "private_endpoint_network_policies" {
  description = "Controls network policies for private endpoints in the subnet."
  type        = string
  default     = "Disabled"

  validation {
    condition = contains(
      [
        "Disabled",
        "Enabled",
        "NetworkSecurityGroupEnabled",
        "RouteTableEnabled",
      ],
      var.private_endpoint_network_policies
    )

    error_message = "private_endpoint_network_policies must be Disabled, Enabled, NetworkSecurityGroupEnabled, or RouteTableEnabled."
  }
}
