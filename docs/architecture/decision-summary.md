# Architecture Decision Summary

| Decision | Rationale |
|---|---|
| Terraform | Reusable, reviewable infrastructure as code |
| Separate environment roots | Reduced blast radius and independent lifecycle |
| Hub-and-spoke | Centralized connectivity and segmentation |
| Managed identity | Avoid stored credentials |
| OIDC for GitHub Actions | Short-lived authentication |
| Azure CNI | Native VNet integration for AKS |
| Private endpoints | Reduce public service exposure |
| Log Analytics | Centralized Azure telemetry |
| GitHub Environments | Approval and secret boundaries |
