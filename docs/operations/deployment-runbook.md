# Terraform Deployment Runbook

## Pull request

1. Create a feature branch.
2. Run local formatting and validation.
3. Open a pull request.
4. Review Terraform CI findings.
5. Correct validation, lint, and security issues.
6. Merge after approval.

## Development

A relevant merge to `main` triggers Development automatically after the GitHub Environment and Azure OIDC configuration exist.

## QA and Production

1. Open GitHub Actions.
2. Select **Deploy QA or Production**.
3. Choose the environment.
4. Enter `DEPLOY`.
5. Review and approve the protected environment.
6. Monitor plan and apply output.
7. Validate Azure resources after completion.

## Failure handling

- Do not rerun blindly.
- Read the Terraform error and Azure activity log.
- Determine whether state and infrastructure changed.
- Run a fresh plan.
- Apply a targeted correction only when justified.
- Record material incidents and remediation.
