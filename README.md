# Enterprise Azure Landing Zone Reference Architecture

## Release v2.0.2 — Local Quality and Security Tooling

This patch release adds local quality and security tooling without changing Terraform infrastructure code.

### Added

- Pre-commit hooks
- TFLint configuration
- Checkov configuration
- tfsec configuration
- Trivy configuration
- Markdown linting
- PowerShell and Bash quality-check scripts
- Tooling documentation
- Updated Makefile targets

## Safe release scope

This release does not modify:

- Terraform modules
- Dev, QA, or Prod root modules
- Azure resource definitions
- Provider configuration
- Backend configuration

## Local checks

PowerShell:

```powershell
.\scripts\quality-check.ps1
```

Bash:

```bash
chmod +x scripts/quality-check.sh
./scripts/quality-check.sh
```

## Roadmap

- [x] v2.0.0 Integrated portfolio release
- [x] v2.0.1 Repository governance
- [x] v2.0.2 Local quality and security tooling
- [ ] v2.0.3 Native Terraform tests and examples
- [ ] v2.0.4 MkDocs and GitHub Pages
- [ ] v2.0.5 Release automation and final polish

Maintained by [Harshil Amin](https://github.com/harshilamin).
