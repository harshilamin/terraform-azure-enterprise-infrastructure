# Supply-Chain Security

## Dependency maintenance

Dependabot monitors:

- GitHub Actions
- Python documentation dependencies

Updates are proposed through pull requests and must pass repository checks.

## Pull-request dependency review

The dependency-review workflow blocks newly introduced dependencies with known high-severity vulnerabilities.

## Release provenance

The release workflow:

1. Validates Terraform and documentation.
2. Packages only tracked Git content with `git archive`.
3. Generates a SHA-256 checksum.
4. Creates a GitHub artifact attestation for public repositories.
5. Publishes the ZIP and checksum in a GitHub Release.

## Action security

For stricter enterprise use, configure repository settings to require actions to be pinned to full commit SHAs. Dependabot can then update those SHAs through reviewed pull requests.

## Verification

A published checksum can be checked with:

```bash
sha256sum -c terraform-azure-enterprise-infrastructure-v2.1.0.zip.sha256
```

A public artifact attestation can be checked with the GitHub CLI:

```bash
gh attestation verify terraform-azure-enterprise-infrastructure-v2.1.0.zip   --repo harshilamin/terraform-azure-enterprise-infrastructure
```
