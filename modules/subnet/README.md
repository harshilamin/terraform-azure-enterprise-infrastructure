# Subnet Module

Creates an Azure subnet with optional service endpoints and configurable private-endpoint network policies.

## Private endpoint policies

Supported values:

- `Disabled`
- `Enabled`
- `NetworkSecurityGroupEnabled`
- `RouteTableEnabled`

For a dedicated private endpoint subnet, this project uses:

```hcl
private_endpoint_network_policies = "Disabled"
```
