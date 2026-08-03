# v1.8.2 Hotfix

## Issue

The v1.8.0 route-table configuration associated both:

- `module.spoke_aks_subnet.id`
- `module.spoke_app_subnet.id`

However, the application subnet module was not present in the environment roots.

## Resolution

This hotfix adds `spoke_app_subnet` to:

- Dev
- QA
- Prod

The subnet uses the existing environment-specific value:

```hcl
local.spoke_subnets.app
```
