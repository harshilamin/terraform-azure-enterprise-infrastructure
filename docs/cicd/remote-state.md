# Remote Terraform State

Each environment uses the AzureRM backend with a separate state key:

```text
dev/platform.tfstate
qa/platform.tfstate
prod/platform.tfstate
```

The workflow supplies backend settings at runtime.

## State storage requirements

The storage account should enable:

- Blob versioning
- Soft delete
- Restricted RBAC
- Network restrictions where practical
- Diagnostic logging
- A dedicated private container

## Local initialization

For syntax validation without Azure access:

```bash
terraform -chdir=environments/dev init -backend=false
```

For a real backend:

```bash
terraform -chdir=environments/dev init   -reconfigure   -backend-config="resource_group_name=<state-rg>"   -backend-config="storage_account_name=<state-account>"   -backend-config="container_name=<container>"   -backend-config="key=dev/platform.tfstate"
```
