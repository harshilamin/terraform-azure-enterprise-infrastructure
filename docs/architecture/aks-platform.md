# AKS Platform Architecture

## Identity

The cluster control plane uses a user-assigned managed identity. The kubelet identity receives `AcrPull` permissions on the environment registry.

## Networking

AKS uses Azure CNI and deploys the system node pool into the environment's AKS subnet.

## Security

- Local cluster accounts are disabled
- Azure RBAC is enabled
- OIDC issuer is enabled
- Workload identity is enabled
- Production uses private cluster mode
- The system node pool is reserved for critical add-ons

## Operations

- Cluster autoscaling is enabled
- Azure Monitor integration sends telemetry to Log Analytics
- Weekly control-plane and node OS maintenance windows are configured
