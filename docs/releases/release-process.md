# Release Process

## Before tagging

1. Merge the release pull request.
2. Pull the latest `main`.
3. Confirm the working tree is clean.
4. Run the final readiness script.
5. Confirm required GitHub checks passed.
6. Review `CHANGELOG.md` and `FINAL_RELEASE_NOTES.md`.

## Create the final tag

```powershell
git checkout main
git pull origin main
git tag -a v2.1.0 -m "Release v2.1.0: final enterprise Azure infrastructure portfolio"
git push origin v2.1.0
```

## Automated behavior

The release workflow:

1. Checks Terraform formatting.
2. Validates Dev, QA, and Prod.
3. Runs native module tests.
4. Builds MkDocs in strict mode.
5. Packages only tracked files with `git archive`.
6. Generates a SHA-256 checksum.
7. Creates an artifact attestation for a public repository.
8. Publishes the ZIP and checksum in a GitHub Release.

## Verify the release

```bash
sha256sum -c terraform-azure-enterprise-infrastructure-v2.1.0.zip.sha256

gh attestation verify terraform-azure-enterprise-infrastructure-v2.1.0.zip \
  --repo harshilamin/terraform-azure-enterprise-infrastructure
```

## Failed release

Fix the issue through a pull request. Do not move an existing semantic tag to a different commit without first removing the failed local and remote tag and confirming that no valid release depends on it.
