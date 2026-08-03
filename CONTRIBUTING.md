# Contributing

## Workflow

1. Start from the latest `main`.
2. Create a focused branch.
3. Make one coherent change.
4. Run final readiness checks.
5. Open a pull request.
6. Merge only after required checks and review pass.

## Branch names

```text
feature/<description>
fix/<description>
docs/<description>
chore/<description>
test/<description>
```

## Conventional commits

```text
feat: add platform capability
fix: correct module integration
docs: improve architecture guidance
ci: improve pull request validation
test: add native Terraform coverage
chore: update repository tooling
```

## Required local validation

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\scripts\final-readiness.ps1
```

## Pull-request expectations

- Explain the problem and the chosen solution.
- Describe security, cost, and operational impact.
- Include validation evidence.
- Update documentation for behavioral changes.
- Keep unrelated formatting changes out of the pull request.
- Never commit credentials, state, real variable files, or employer-owned code.
