# Deployment Guide

## Portfolio validation only

No Azure account is required:

```powershell
terraform fmt -check -recursive
.\scripts\validate-all.ps1
```

## Real Azure deployment prerequisites

- Azure subscription
- Azure CLI
- Terraform
- Appropriate Azure RBAC
- Remote-state storage
- GitHub OIDC federation for CI/CD

## Environment workflow

1. Validate Dev.
2. Create and review a Dev plan.
3. Apply Dev.
4. Test shared services and AKS.
5. Promote to QA.
6. Validate QA.
7. Schedule and approve Production.
8. Apply Production through a protected workflow.

## Local initialization with remote state

```bash
terraform -chdir=environments/dev init   -reconfigure   -backend-config="resource_group_name=<state-rg>"   -backend-config="storage_account_name=<state-account>"   -backend-config="container_name=tfstate"   -backend-config="key=dev/platform.tfstate"
```

## Important

Do not deploy the entire platform solely to prove portfolio value. Validation, documentation, clean module design, and CI workflows already demonstrate the engineering approach without ongoing cloud costs.
