# Resource Protection

## Management locks

Production applies a `CanNotDelete` lock to the platform resource group.

This prevents accidental deletion while allowing authorized modification. Management-lock creation requires an identity with permissions for `Microsoft.Authorization/locks/*`.

## Route tables

Workload subnets receive a shared route table. No forced-tunneling route is added until an Azure Firewall private IP is available. This avoids documenting a fake next-hop address.

## RBAC

Terraform deployment identities should receive the minimum roles necessary to manage:

- Network resources
- Private DNS
- Private endpoints
- Role assignments
- Management locks

Subscription-wide Owner access is not recommended for production.
