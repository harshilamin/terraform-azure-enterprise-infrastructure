# Enterprise Azure Landing Zone

A production-inspired Azure Platform Engineering portfolio built with Terraform.

## Explore the platform

<div class="grid cards" markdown>

-   **Architecture**

    ---

    Review hub-and-spoke networking, AKS, shared services, Private Link, monitoring, and architecture decisions.

    [Architecture overview](architecture/README.md)

-   **Security**

    ---

    Review managed identities, Azure RBAC, OIDC, private endpoints, repository controls, and release provenance.

    [Security model](security/security-model.md)

-   **Delivery**

    ---

    Review pull-request validation, native tests, environment promotion, and semantic releases.

    [CI/CD overview](cicd/README.md)

-   **Operations**

    ---

    Review troubleshooting, rollback, alert response, cost governance, and private endpoint validation.

    [Operations guide](operations/troubleshooting.md)

</div>

## Validate locally

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\scripts\final-readiness.ps1
```

## Recommended reviewer path

1. [Final walkthrough](portfolio/final-walkthrough.md)
2. [Architecture Decision Records](adr/README.md)
3. [Supply-chain security](security/supply-chain-security.md)
4. [Interview demo script](portfolio/demo-script.md)
5. [Repository 1 final status](portfolio/repository-1-final.md)

!!! note

    The repository validates without a live Azure deployment. Authenticated plan and apply workflows require Azure OIDC federation, remote state, and protected GitHub Environments.
