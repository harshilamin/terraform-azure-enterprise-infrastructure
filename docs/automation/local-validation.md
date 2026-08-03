# Local Validation Automation

## PowerShell

```powershell
./scripts/validate-all.ps1
```

Clean Terraform module caches:

```powershell
./scripts/clean-terraform-cache.ps1
```

## Bash

```bash
chmod +x scripts/*.sh
./scripts/validate-all.sh
```

These scripts use `init -backend=false` so they can validate the portfolio repository without Azure remote-state credentials.
