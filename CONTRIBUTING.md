# Contributing

## Workflow

1. Create a branch from current `main`.
2. Make focused changes.
3. Run formatting and validation.
4. Open a pull request.
5. Merge only after checks pass.

## Branch naming

- `feature/<description>`
- `fix/<description>`
- `docs/<description>`
- `chore/<description>`

## Commit examples

```text
feat: add reusable module
fix: correct subnet variable
docs: update operations guide
ci: improve validation workflow
```

## Required checks

```powershell
terraform fmt -recursive
terraform fmt -check -recursive
.\scripts\validate-all.ps1
```
