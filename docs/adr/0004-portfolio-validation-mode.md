# ADR-0004: Support validation without live Azure deployment

- Status: Accepted
- Date: 2026-08-03
- Owners: Platform Engineering

## Context

A portfolio should demonstrate engineering quality without forcing the owner to maintain costly cloud infrastructure.

## Decision

Ensure formatting, initialization without backend, validation, native tests, linting, security scanning, and documentation builds can run without Azure credentials.

## Consequences

- The project remains inexpensive to maintain.
- Reviewers can inspect working CI.
- Live integration and performance claims are intentionally not made.
