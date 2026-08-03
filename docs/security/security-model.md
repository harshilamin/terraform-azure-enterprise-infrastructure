# Security Model

## Identity

- Microsoft Entra ID authentication
- User-assigned managed identities
- Azure RBAC
- Separate deployment and workload identities
- OIDC federation for GitHub Actions

## Network security

- Hub-and-spoke segmentation
- NSGs at subnet level
- Private endpoints for platform services
- Private DNS
- Production private AKS
- No unnecessary public administration access

## Data protection

- Key Vault soft delete
- Key Vault purge protection
- Storage TLS 1.2
- Blob versioning
- Delete retention
- Public blob access disabled

## Operational protection

- Production management lock
- Diagnostic settings
- Action groups
- Metric alerts
- Optional budgets
- Pull-request validation

## Secrets

No real credentials, tenant IDs, subscription IDs, certificates, or production variable files should be committed.
