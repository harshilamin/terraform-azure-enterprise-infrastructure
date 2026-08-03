# Recommended Repository Settings

## General

- Enable Issues
- Enable Discussions only when actively maintained
- Use squash merge or merge commits consistently
- Delete branches after merge

## Branch protection for `main`

- Require a pull request
- Require at least one approval
- Dismiss stale approvals
- Require conversation resolution
- Require status checks
- Prevent force pushes
- Prevent branch deletion

Recommended required checks:

- Terraform Format
- Validate dev
- Validate qa
- Validate prod
- TFLint
- Checkov
- Terraform foundations
- Native Terraform tests
- Documentation strict build
- Repository hygiene

## Security

Enable:

- Dependency graph
- Dependabot alerts
- Dependabot security updates
- Dependabot version updates
- Secret scanning when available
- Push protection when available

## Pages

Use GitHub Actions as the Pages source.

## Actions

- Use read-only default workflow permissions where possible.
- Grant write permissions only in the specific release or deployment workflow that needs them.
- Consider requiring actions to be pinned to full commit SHAs.
