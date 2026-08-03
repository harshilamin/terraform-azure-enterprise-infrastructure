# Enterprise Azure Landing Zone Reference Architecture

## Release v1.5.0

This release adds the Azure Kubernetes Service platform layer.

### Added

- Reusable AKS module
- Reusable Azure role-assignment module
- User-assigned managed identity integration
- Azure CNI networking
- Environment-specific node sizing and autoscaling
- Log Analytics integration
- ACR pull permissions for the AKS kubelet identity
- Cluster outputs for Dev, QA, and Prod
- AKS architecture and operations documentation

## Environment sizing

| Environment | VM size | Min nodes | Max nodes | Private cluster |
|---|---|---:|---:|---|
| Dev | Standard_D2s_v5 | 1 | 3 | No |
| QA | Standard_D2s_v5 | 1 | 4 | No |
| Prod | Standard_D4s_v5 | 3 | 8 | Yes |

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
- [x] v1.5.0 AKS platform
- [ ] v1.6.0 Monitoring and diagnostics
- [ ] v1.7.0 Deployment workflows
- [ ] v2.0.0 Integrated platform

Maintained by [Harshil Amin](https://github.com/harshilamin).
