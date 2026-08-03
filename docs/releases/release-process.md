# Release Process

## Before tagging

1. Merge the release pull request.
2. Pull the latest `main`.
3. Confirm the working tree is clean.
4. Run Terraform validation.
5. Confirm GitHub Actions passed.
6. Update the changelog and release notes.

## Create the tag

```powershell
git checkout main
git pull origin main
git tag -a v2.0.5 -m "Release v2.0.5: release automation and final polish"
git push origin v2.0.5
```

Pushing the tag triggers the release workflow, which validates Terraform, creates a clean ZIP, and publishes a GitHub Release.
