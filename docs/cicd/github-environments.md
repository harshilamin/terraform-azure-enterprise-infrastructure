# GitHub Environments

Create these repository environments:

```text
dev
qa
prod
```

Navigate to:

```text
Repository Settings → Environments
```

## Recommended protection

### Dev

- No required reviewer
- Deployment allowed from `main`

### QA

- At least one required reviewer
- Deployment allowed from `main`

### Production

- At least one required reviewer
- Prevent self-review where available
- Deployment allowed from `main`
- Optional wait timer

## Required environment secrets

Create these secrets in each environment:

| Secret | Purpose |
|---|---|
| `AZURE_CLIENT_ID` | Entra application or managed identity client ID |
| `AZURE_TENANT_ID` | Microsoft Entra tenant ID |
| `AZURE_SUBSCRIPTION_ID` | Target subscription |
| `TF_STATE_RESOURCE_GROUP` | Terraform state resource group |
| `TF_STATE_STORAGE_ACCOUNT` | Terraform state storage account |
| `TF_STATE_CONTAINER` | Terraform state blob container |

Separate credentials or subscriptions may be used for each environment.
