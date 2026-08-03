variable "name" {
  description = "AKS cluster name."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the AKS cluster."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
}

variable "tenant_id" {
  description = "Microsoft Entra tenant ID used by AKS Azure RBAC."
  type        = string
}

variable "kubernetes_version" {
  description = "Optional Kubernetes version."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Subnet ID for the system node pool."
  type        = string
}

variable "user_assigned_identity_id" {
  description = "User-assigned managed identity resource ID."
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "Log Analytics Workspace resource ID."
  type        = string
}

variable "node_vm_size" {
  description = "VM size for the system node pool."
  type        = string
  default     = "Standard_D2s_v5"
}

variable "node_min_count" {
  description = "Minimum number of nodes."
  type        = number
  default     = 1
}

variable "node_max_count" {
  description = "Maximum number of nodes."
  type        = number
  default     = 3
}

variable "private_cluster_enabled" {
  description = "Whether to deploy a private AKS cluster."
  type        = bool
  default     = false
}

variable "network_plugin" {
  description = "AKS network plugin."
  type        = string
  default     = "azure"
}

variable "network_policy" {
  description = "AKS network policy."
  type        = string
  default     = "azure"
}

variable "service_cidr" {
  description = "Kubernetes service CIDR."
  type        = string
}

variable "dns_service_ip" {
  description = "Kubernetes DNS service IP."
  type        = string
}

variable "tags" {
  description = "Tags applied to the AKS cluster."
  type        = map(string)
  default     = {}
}
