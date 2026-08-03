# Local Quality and Security Tooling

## Tools

- Terraform formatting and validation
- TFLint
- Checkov
- tfsec
- Trivy
- markdownlint
- pre-commit

## Install pre-commit

```bash
python -m pip install pre-commit
pre-commit install
pre-commit run --all-files
```

## PowerShell workflow

```powershell
.\scripts\quality-check.ps1
```

## Bash workflow

```bash
chmod +x scripts/quality-check.sh
./scripts/quality-check.sh
```

## Security-scan behavior

Checkov and Trivy are configured for portfolio visibility and do not block by default. Findings should still be reviewed and documented before a real deployment.

## Important

Tool versions should be updated through small, reviewed pull requests rather than silently changed across the repository.
