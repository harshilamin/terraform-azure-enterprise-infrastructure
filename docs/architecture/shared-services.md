# Shared Platform Services

## Managed Identity

A user-assigned managed identity provides a stable identity for platform automation and future workloads.

## Key Vault

Key Vault stores application and platform secrets. RBAC authorization, soft delete, and purge protection are enabled.

## Storage Account

The platform storage account uses TLS 1.2, blocks public blob access, enables blob versioning, and retains deleted data.

## Container Registry

ACR stores container images for future AKS workloads. The admin account is disabled.

## Log Analytics

Log Analytics centralizes platform telemetry. Retention increases from Dev to Production.

## Environment differences

| Capability | Dev | QA | Prod |
|---|---|---|---|
| ACR SKU | Basic | Standard | Premium |
| Storage replication | LRS | LRS | ZRS |
| Log retention | 30 days | 60 days | 90 days |
| Public network access | Enabled | Enabled | Disabled |
