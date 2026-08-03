# GitHub Actions Design

## Pull request workflow

`terraform-ci.yml` runs without Azure credentials and performs:

- Terraform formatting checks
- Initialization with the backend disabled
- Validation for Dev, QA, and Prod
- TFLint analysis
- Checkov scanning

Checkov is initially configured with `--soft-fail` so findings remain visible without blocking early portfolio development. It should become blocking after the baseline findings are reviewed.

## Plan workflow

`terraform-plan.yml` is manually triggered and:

1. Selects a GitHub Environment
2. Authenticates to Azure through OIDC
3. Initializes the remote backend
4. Creates a binary plan
5. Creates a readable text plan
6. Uploads both as a short-lived artifact

## Development deployment

Changes merged to `main` that affect Dev or reusable modules trigger `deploy-dev.yml`.

## QA and Production deployment

`deploy-promoted-environment.yml` requires:

- Manual workflow execution
- An explicit `DEPLOY` confirmation
- GitHub Environment protection
- OIDC-based Azure authentication
- A fresh plan immediately before apply

## Concurrency

One apply can run per environment at a time. Apply jobs are not automatically cancelled because interruption during infrastructure changes can complicate recovery.
