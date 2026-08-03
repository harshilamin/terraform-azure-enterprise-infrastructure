# Cost Governance

Budgets are disabled by default so the repository remains portfolio-friendly.

## Enabling a budget

Set in an uncommitted environment variable file:

```hcl
enable_cost_budget = true
monthly_budget_amount = 50
budget_notification_emails = [
  "platform-owner@example.com",
]
```

## Governance practices

- Review cost by environment
- Require tags for ownership and allocation
- Investigate unexpected daily increases
- Scale non-production resources appropriately
- Remove unused images, disks, IPs, and snapshots
- Keep budgets and thresholds aligned with business expectations
