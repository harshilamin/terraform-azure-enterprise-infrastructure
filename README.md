# Enterprise Azure Landing Zone Reference Architecture

## Release v1.4.0

This release adds shared Azure platform services used by application and Kubernetes workloads.

### Added

- User-assigned managed identity module
- Azure Key Vault module
- Azure Storage Account module
- Azure Container Registry module
- Log Analytics Workspace module
- Shared-services configuration for Dev, QA, and Prod
- Environment-specific service sizing
- Service outputs and documentation
- Validation workflow coverage for the new modules

## Shared services architecture

```text
Platform Resource Group
├── User Assigned Managed Identity
├── Azure Key Vault
├── Azure Container Registry
├── Azure Storage Account
└── Log Analytics Workspace
```

## Security principles

- Managed identities instead of embedded credentials
- Key Vault soft delete and purge protection
- TLS 1.2 minimum for storage
- Public blob access disabled
- ACR admin account disabled
- Centralized operational logs
- No secrets committed to source control

## Validate

```bash
terraform fmt -check -recursive

terraform -chdir=environments/dev init -backend=false -reconfigure
terraform -chdir=environments/dev validate

terraform -chdir=environments/qa init -backend=false -reconfigure
terraform -chdir=environments/qa validate

terraform -chdir=environments/prod init -backend=false -reconfigure
terraform -chdir=environments/prod validate
```

## Roadmap

- [x] v1.0.0 Repository foundation
- [x] v1.1.0 Documentation and standards
- [x] v1.2.0 Naming and resource groups
- [x] v1.3.0 Hub-and-spoke networking
- [x] v1.4.0 Shared platform services
- [ ] v1.5.0 AKS platform
- [ ] v1.6.0 Monitoring and diagnostics
- [ ] v2.0.0 Integrated platform

Maintained by [Harshil Amin](https://github.com/harshilamin).
