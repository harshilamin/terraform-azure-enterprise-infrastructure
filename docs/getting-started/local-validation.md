# Local Validation

## Prerequisites

- Terraform 1.8 or later
- Git
- PowerShell or Bash

Optional tooling:

- TFLint
- Checkov
- tfsec
- Trivy
- pre-commit

## Validate all environments

PowerShell:

```powershell
.\scripts\validate-all.ps1
```

Bash:

```bash
./scripts/validate-all.sh
```

## Run native tests

PowerShell:

```powershell
.\scripts\test-modules.ps1
```

Bash:

```bash
./scripts/test-modules.sh
```

## Preview documentation

```powershell
python -m pip install -r requirements-docs.txt
mkdocs serve
```
