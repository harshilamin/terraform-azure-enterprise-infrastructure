# Native Terraform Tests

Terraform's native test framework is used for focused module validation.

## Covered modules

- Naming
- Resource group
- Subnet

## Test types

### Naming

Validates generated resource names for standard and compact naming patterns.

### Resource group

Uses a mocked AzureRM provider and validates the planned resource name, location, and tags.

### Subnet

Uses a mocked AzureRM provider and validates address prefixes and private endpoint policy settings.

## Run all tests

PowerShell:

```powershell
.\scripts\test-modules.ps1
```

Bash:

```bash
./scripts/test-modules.sh
```

## Scope

These tests validate Terraform logic and module interfaces. They do not replace integration testing against a real Azure subscription.
