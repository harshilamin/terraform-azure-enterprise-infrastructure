# Interview Demo Script

## Opening

“This repository is a production-inspired Azure landing-zone portfolio. I built it incrementally with versioned releases, pull requests, validation, testing, security checks, documentation, and release automation.”

## Architecture

Show:

- Hub-and-spoke design
- Dev, QA, and Production separation
- Shared platform services
- Private endpoints
- AKS environment differences

## Terraform

Show:

- `modules/aks`
- `modules/private-endpoint`
- `modules/diagnostic-setting`
- `environments/prod`

Explain focused module boundaries, outputs, environment-specific configuration, and reduced blast radius.

## CI/CD

Show:

- `terraform-ci.yml`
- `portfolio-readiness.yml`
- `release.yml`

Explain PR gates, native tests, documentation build, release checksum, and provenance attestation.

## Security

Show:

- Managed identity
- OIDC ADR
- Private Link
- Production lock
- Dependency review
- Supply-chain security guide

## Close

“The repository validates without requiring a live Azure subscription. I intentionally separate demonstrated code quality from claims about a live production deployment.”
