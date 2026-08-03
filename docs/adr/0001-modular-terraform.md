# ADR-0001: Use focused Terraform modules

- Status: Accepted
- Date: 2026-08-03
- Owners: Platform Engineering

## Context

A single large root module would be difficult to test, review, reuse, and maintain.

## Decision

Use focused modules with narrow responsibilities and explicit variables and outputs.

## Consequences

- Module interfaces are easier to review.
- Tests can target individual capabilities.
- Environment roots remain readable.
- Integration still requires validation across all environments.
