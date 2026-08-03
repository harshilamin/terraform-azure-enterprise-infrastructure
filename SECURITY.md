# Security Policy

## Supported version

Security fixes are applied to the latest release on `main`.

## Reporting a vulnerability

Do not disclose sensitive findings through a public issue.

Contact the repository owner through GitHub and include:

- Affected file or workflow
- Reproduction steps
- Potential impact
- Sanitized evidence
- Recommended remediation when available

Do not include real credentials, tenant IDs, subscription IDs, private keys, or employer information.

## Security controls demonstrated

- Managed identities
- Azure RBAC
- OIDC-based CI/CD design
- Private endpoints and private DNS
- Production deletion protection
- Terraform validation and security scanning
- Dependency review and Dependabot
- Release checksums and provenance attestations

## Portfolio limitation

This repository is a reference implementation. Security controls must be reviewed against the requirements of the Azure tenant and organization before a real deployment.
