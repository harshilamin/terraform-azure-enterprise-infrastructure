# Terraform Standards

Each module should contain `main.tf`, `variables.tf`, `outputs.tf`, `versions.tf`, and `README.md`.

Rules:

- Pin Terraform and providers
- Run fmt and validate
- Describe and validate variables
- Avoid hard-coded tenant/subscription identifiers
- Mark sensitive data
- Prefer `for_each` for stable addressing
- Configure providers in root modules
- Keep modules focused
