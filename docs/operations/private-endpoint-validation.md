# Private Endpoint Validation

After deployment, validate:

```bash
az network private-endpoint list   --resource-group <resource-group>   --output table
```

From a connected workload network, resolve the public service names and confirm they return private addresses:

```bash
nslookup <key-vault-name>.vault.azure.net
nslookup <registry-name>.azurecr.io
nslookup <storage-name>.blob.core.windows.net
```

Also verify:

- Private endpoint connection status is Approved
- Private DNS records exist
- Hub and spoke VNet links exist
- Public network access follows environment policy
- AKS can pull images and reach required platform services
