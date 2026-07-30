# Architecture Overview

The target platform is a secure Azure landing zone supporting development, QA, and production through reusable Terraform modules.

## Layers

- Edge: Front Door and Application Gateway with WAF
- Connectivity: Hub VNet, Firewall, Bastion, and Private DNS
- Workloads: Isolated Dev, QA, and Prod spokes
- Platform services: ACR, Key Vault, Storage, Log Analytics, and Azure Monitor
- Compute: AKS clusters with environment-specific availability and scaling

## Key decisions

- Hub-and-spoke networking
- Separate state per environment
- Private endpoints for platform services
- Managed identities instead of stored credentials
- Centralized logging
- Pull requests for infrastructure changes
