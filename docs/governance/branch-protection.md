# Branch Protection

Recommended protection for `main`:

- Require a pull request before merging
- Require at least one approval
- Dismiss stale approvals
- Require conversation resolution
- Prevent force pushes
- Prevent branch deletion

Recommended required checks:

- Terraform Format
- Validate dev
- Validate qa
- Validate prod
- TFLint
- Checkov
- Documentation build
