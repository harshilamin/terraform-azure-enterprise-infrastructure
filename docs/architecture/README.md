# Architecture Documentation

## Core documents

- `overview.md` — platform layers and design intent
- `private-networking.md` — Private Link and DNS
- `shared-services.md` — Key Vault, ACR, Storage, Log Analytics
- `aks-platform.md` — Kubernetes architecture
- `monitoring.md` — diagnostics and alerting
- `design-decisions.md` — architecture decision records

## Design summary

The platform separates connectivity, workloads, shared services, identity, monitoring, and delivery concerns.

Key principles:

- Environment isolation
- Secure-by-default access
- Reusable infrastructure modules
- Centralized telemetry
- Managed identities
- Pull-request delivery
- Documented operational ownership
