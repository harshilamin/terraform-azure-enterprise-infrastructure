# Interview Talking Points

## Terraform

“I designed the repository around focused reusable modules and separate environment roots. Each environment has an isolated lifecycle and state key.”

## Networking

“I used a hub-and-spoke model with isolated Dev, QA, and Production spokes. Private endpoints and private DNS reduce public exposure for Key Vault, ACR, and Storage.”

## AKS

“The AKS module uses Azure CNI, managed identity, Azure RBAC, OIDC, workload identity, autoscaling, maintenance windows, and Log Analytics integration.”

## Security

“I preferred managed identity and OIDC over stored secrets. Production also uses private AKS and a resource-group deletion lock.”

## CI/CD

“The pull-request workflow performs formatting, validation, linting, and security scanning. The authenticated workflows show OIDC-based planning and controlled environment promotion.”

## Observability

“Diagnostic settings centralize platform logs in Log Analytics. Action groups and metric alerts provide an operational response path.”

## Cost governance

“Budgets are optional and disabled by default for portfolio use, but the modules demonstrate how cost thresholds and notifications would be managed.”
