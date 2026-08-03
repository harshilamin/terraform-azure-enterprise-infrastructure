# v1.5.3 Hotfix

Adds only the missing `spoke_subnets` local map to Dev, QA, and Prod.

This hotfix intentionally does not redefine:

- `hub_address_space`
- `spoke_address_space`
- `hub_subnets`

That avoids the duplicate-local errors from the previous hotfix.
