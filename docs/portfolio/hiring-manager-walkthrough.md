# Hiring Manager Walkthrough

A reviewer can understand this project in approximately ten minutes.

## Minute 1–2: README

Review the architecture, module list, environment differences, and delivery model.

## Minute 3–4: Modules

Open:

- `modules/aks`
- `modules/private-endpoint`
- `modules/diagnostic-setting`
- `modules/metric-alert`

These show module design, variables, outputs, and security decisions.

## Minute 5–6: Environments

Compare:

- `environments/dev`
- `environments/qa`
- `environments/prod`

Look for sizing, retention, availability, private networking, and operational differences.

## Minute 7–8: CI/CD

Review `.github/workflows` for pull-request validation, OIDC authentication, plans, artifacts, approvals, and concurrency.

## Minute 9–10: Operations

Review monitoring, alert response, cost governance, troubleshooting, and rollback documentation.
