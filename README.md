# Enterprise Azure Landing Zone Reference Architecture

[![Terraform CI](https://github.com/harshilamin/terraform-azure-enterprise-infrastructure/actions/workflows/terraform-ci.yml/badge.svg)](https://github.com/harshilamin/terraform-azure-enterprise-infrastructure/actions/workflows/terraform-ci.yml)
[![Documentation](https://github.com/harshilamin/terraform-azure-enterprise-infrastructure/actions/workflows/docs-pages.yml/badge.svg)](https://github.com/harshilamin/terraform-azure-enterprise-infrastructure/actions/workflows/docs-pages.yml)
[![Release](https://img.shields.io/github/v/release/harshilamin/terraform-azure-enterprise-infrastructure)](https://github.com/harshilamin/terraform-azure-enterprise-infrastructure/releases)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Release v2.0.5 — Release Automation and Final Polish

This patch release completes the first polished version of Repository 1.

### Added

- Automated GitHub Release workflow
- Release artifact packaging
- Generated release notes
- Branch-protection guidance
- Status badges
- Release-process documentation
- Repository completion assessment

## Safe release scope

This release does not modify Terraform modules, environment roots, provider configuration, backend configuration, or Azure resource definitions.

## Release flow

```text
Merge pull request
        |
Create and push semantic tag
        |
Validate Terraform
        |
Package clean source archive
        |
Create GitHub Release
```

Maintained by [Harshil Amin](https://github.com/harshilamin).
