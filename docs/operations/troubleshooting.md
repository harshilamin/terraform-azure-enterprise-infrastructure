# Troubleshooting Guide

## Module not installed

Run:

```powershell
terraform -chdir=environments/dev init -backend=false -reconfigure
```

Repeat for QA and Prod.

## Duplicate local value

Search all `.tf` files in the environment root. A local name may be declared only once.

```powershell
Select-String -Path environments\dev\*.tf -Pattern "spoke_subnets"
```

## Unsupported module argument

Confirm the child module declares the variable and forwards it to the provider resource.

## VS Code shows a false error

1. Delete the environment `.terraform` directory.
2. Re-run `terraform init`.
3. Restart the Terraform language server.
4. Reload the VS Code window.

## Provider deprecation warning

Update the Terraform argument to the current AzureRM name, then run:

```powershell
terraform fmt -recursive
terraform validate
```

## Remote backend failure

Check:

- State resource group
- Storage account name
- Container name
- State key
- Azure authentication
- Storage Blob Data Contributor role

## Private endpoint resolution failure

Check:

- Private endpoint connection state
- Private DNS zone
- VNet links
- DNS record creation
- Client network connectivity
