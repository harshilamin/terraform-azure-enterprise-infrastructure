variable "monitoring_email" {
  description = "Optional email address for Azure Monitor notifications."
  type        = string
  default     = null
  nullable    = true
}
