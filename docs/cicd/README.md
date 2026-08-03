# CI/CD Documentation

## Workflows

- `terraform-ci.yml` — format, validate, TFLint, Checkov
- `terraform-plan.yml` — authenticated plan and artifacts
- `deploy-dev.yml` — Development deployment
- `deploy-promoted-environment.yml` — QA and Production promotion

## Portfolio mode

Only the non-authenticated CI workflow is expected to run without Azure configuration.

## Enterprise mode

Authenticated workflows require:

- GitHub Environments
- OIDC federation
- Azure deployment identity
- Remote Terraform state
- Environment-specific approvals
