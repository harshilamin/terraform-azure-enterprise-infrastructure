# Monitoring Architecture

## Data collection

Diagnostic settings send platform logs and metrics from:

- Azure Kubernetes Service
- Azure Key Vault
- Azure Container Registry
- Azure Storage Account

The destination is the environment's Log Analytics Workspace.

## Notifications

An Azure Monitor Action Group provides a reusable notification target. Email receivers are optional and supplied through environment variables.

## Environment separation

Each environment has its own workspace and action group. This prevents Development noise from obscuring Production incidents and supports different retention and notification policies.
