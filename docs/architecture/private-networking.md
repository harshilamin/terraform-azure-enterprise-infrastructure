# Private Networking Architecture

## Private endpoint subnet

Each environment receives a dedicated subnet for Azure Private Endpoints:

| Environment | CIDR |
|---|---|
| Dev | 10.10.3.0/24 |
| QA | 10.20.3.0/24 |
| Prod | 10.30.3.0/24 |

Private endpoint network policies are disabled on this subnet.

## Private DNS zones

The platform creates and links:

- `privatelink.vaultcore.azure.net`
- `privatelink.azurecr.io`
- `privatelink.blob.core.windows.net`
- `privatelink.file.core.windows.net`

Each zone links to both the hub and environment spoke.

## Private endpoints

Private endpoints are provisioned for:

- Azure Key Vault
- Azure Container Registry
- Storage Blob
- Storage File

## Portfolio architecture note

This repository models independent environment roots. A large enterprise would commonly centralize private DNS zones in a connectivity subscription and authorize cross-subscription VNet links.
