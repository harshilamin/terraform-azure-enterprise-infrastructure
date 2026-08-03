# Rollback Guidance

Infrastructure rollback is not always equivalent to application rollback.

## Preferred method

1. Revert the problematic Git commit.
2. Open a pull request with the revert.
3. Run validation and create a fresh Terraform plan.
4. Review destructive actions carefully.
5. Apply through the normal protected workflow.

## Important cautions

- Never manually edit Terraform state without a recovery plan.
- Restoring an old state file does not automatically restore cloud resources.
- Database, storage, and Key Vault changes may require service-specific recovery.
- Production rollback should be approved and documented.
