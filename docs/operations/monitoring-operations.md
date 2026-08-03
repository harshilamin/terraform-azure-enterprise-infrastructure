# Monitoring Operations

## Configure an email receiver

Copy the environment example file:

```powershell
Copy-Item monitoring.auto.tfvars.example monitoring.auto.tfvars
```

Set:

```hcl
monitoring_email = "platform-alerts@example.com"
```

The real `.auto.tfvars` file must not be committed.

## Verification

After deployment:

1. Confirm diagnostic settings exist on each target resource.
2. Confirm data is arriving in Log Analytics.
3. Trigger a test action-group notification.
4. Review ingestion volume and cost.
5. Document alert ownership and escalation paths.
