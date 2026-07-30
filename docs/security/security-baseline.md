# Security Baseline

## Identity
Use Entra ID, managed identities, least-privilege RBAC, and separate deployment/runtime identities.

## Secrets
Use Key Vault. Do not commit credentials or real variable files.

## Networking
Disable public access where practical and use private endpoints with private DNS.

## Logging
Enable diagnostic settings for Key Vault, AKS, ACR, Firewall, Application Gateway, Storage, and activity logs.
