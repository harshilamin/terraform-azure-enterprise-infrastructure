# Enterprise Azure Landing Zone

This site documents a production-inspired Azure platform engineering reference implementation built with Terraform.

## What the platform includes

- Dev, QA, and Production environment roots
- Reusable Terraform modules
- Hub-and-spoke networking
- Azure Kubernetes Service
- Key Vault, ACR, Storage, and Log Analytics
- Private endpoints and private DNS
- Azure Monitor diagnostics and alerts
- CI/CD reference workflows
- Governance, budgets, and operational runbooks

## Portfolio mode

The repository is designed to validate locally without requiring a paid Azure deployment.

```powershell
terraform fmt -check -recursive
.\scripts\validate-all.ps1
```

## Recommended reading path

1. [Architecture overview](architecture/README.md)
2. [Deployment guide](getting-started/deployment-guide.md)
3. [Security model](security/security-model.md)
4. [CI/CD overview](cicd/README.md)
5. [Troubleshooting guide](operations/troubleshooting.md)
6. [Hiring manager walkthrough](portfolio/hiring-manager-walkthrough.md)

!!! note

    Authenticated deployment workflows require Azure OIDC federation, GitHub Environments, and remote-state resources. They are included as documented reference patterns.
