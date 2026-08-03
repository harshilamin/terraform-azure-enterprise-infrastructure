# Enterprise Azure Landing Zone Reference Architecture

## Release v1.6.0

This release adds centralized Azure Monitor diagnostics and alert routing.

### Added

- Reusable Azure Monitor diagnostic-setting module
- Reusable Azure Monitor action-group module
- Diagnostic logs for AKS, Key Vault, ACR, and Storage
- Metrics forwarding to Log Analytics
- Environment-specific log retention and notification settings
- Monitoring architecture and operational documentation

## Monitoring flow

```text
AKS / Key Vault / ACR / Storage
              |
              v
     Diagnostic Settings
              |
              v
     Log Analytics Workspace
              |
              v
        Azure Monitor
              |
              v
         Action Group
```

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
- [x] v1.6.0 Monitoring and diagnostics
- [ ] v1.7.0 Deployment workflows
- [ ] v2.0.0 Integrated platform

Maintained by [Harshil Amin](https://github.com/harshilamin).
