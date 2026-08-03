# ADR-0003: Prefer OIDC for CI/CD authentication

- Status: Accepted
- Date: 2026-08-03
- Owners: Platform Engineering

## Context

Long-lived client secrets create rotation and leakage risk.

## Decision

Use GitHub Actions OIDC federation for authenticated Azure workflows.

## Consequences

- No client secret is stored in GitHub.
- Tokens are short lived.
- Federated credentials must exactly match repository and environment subjects.
- Azure setup is required before plan or apply workflows can run.
