# Contributing

Use feature branches, focused commits, pull requests, and local validation.

## Branches

- `feature/<description>`
- `fix/<description>`
- `docs/<description>`
- `chore/<description>`
- `release/<version>`

## Conventional commits

```text
feat: add reusable resource group module
fix: correct subnet validation
docs: document hub routing
ci: add Terraform validation
```

## Validation

```bash
make fmt
make validate
make lint
make docs
```
