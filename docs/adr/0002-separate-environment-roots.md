# ADR-0002: Use separate environment roots

- Status: Accepted
- Date: 2026-08-03
- Owners: Platform Engineering

## Context

Dev, QA, and Production require different sizing, controls, approvals, and operational lifecycles.

## Decision

Maintain independent Terraform roots and state keys for each environment.

## Consequences

- Smaller blast radius
- Independent promotion and rollback
- Clear environment differences
- Some repeated root configuration remains intentional
