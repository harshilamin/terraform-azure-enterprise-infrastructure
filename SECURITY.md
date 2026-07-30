# Security Policy

- Never commit secrets, keys, certificates, or real Terraform variable files.
- Prefer managed identities and federated authentication.
- Apply least-privilege Azure RBAC.
- Use private endpoints where practical.
- Protect remote Terraform state with RBAC, versioning, soft delete, and network controls.
- Report sensitive findings privately to the repository owner.
