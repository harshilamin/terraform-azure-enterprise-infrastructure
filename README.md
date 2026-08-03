# Enterprise Azure Landing Zone Reference Architecture

## Release v2.0.3 — Terraform Tests and Examples

This patch release adds native Terraform tests and small usage examples without changing the existing environment roots.

### Added

- Native Terraform tests for the naming module
- Native Terraform tests for the resource-group module
- Native Terraform tests for the subnet module
- Example for standardized naming
- Example for resource-group creation
- Example for basic networking
- PowerShell and Bash test runners
- Testing documentation
- v2.0.3 release checklist

## Safe release scope

This release does not modify:

- `environments/dev`
- `environments/qa`
- `environments/prod`
- Existing module implementation files
- Azure provider configuration
- Backend configuration

## Run the tests

PowerShell:

```powershell
.\scripts\test-modules.ps1
```

Bash:

```bash
chmod +x scripts/test-modules.sh
./scripts/test-modules.sh
```

## Roadmap

- [x] v2.0.0 Integrated portfolio release
- [x] v2.0.1 Repository governance
- [x] v2.0.2 Local quality and security tooling
- [x] v2.0.3 Native Terraform tests and examples
- [ ] v2.0.4 MkDocs and GitHub Pages
- [ ] v2.0.5 Release automation and final polish

Maintained by [Harshil Amin](https://github.com/harshilamin).
