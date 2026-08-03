# Azure OIDC Setup

GitHub Actions uses short-lived OpenID Connect tokens instead of a stored client secret.

## Required Azure objects

For each GitHub Environment:

1. Create or select a Microsoft Entra application or user-assigned managed identity.
2. Grant only the Azure roles required by Terraform.
3. Add a federated identity credential.
4. Store the client, tenant, and subscription IDs as GitHub Environment secrets.

## Federated subject

When a workflow job references a GitHub Environment, use a subject similar to:

```text
repo:harshilamin/terraform-azure-enterprise-infrastructure:environment:dev
```

Create equivalent credentials for `qa` and `prod`.

## Security guidance

- Use separate identities for environments where practical.
- Scope Azure roles narrowly.
- Do not create a client secret for the workflow.
- Protect QA and Production with required reviewers.
- Review role assignments periodically.
