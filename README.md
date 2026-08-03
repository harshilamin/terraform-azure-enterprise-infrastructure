# Enterprise Azure Landing Zone Reference Architecture

## v1.3.0 — Hub-and-Spoke Networking

Adds reusable modules for virtual networks, subnets, NSGs, and VNet peering, plus Dev/QA/Prod network roots.

## Validate

```bash
terraform fmt -check -recursive
terraform -chdir=environments/dev init -backend=false
terraform -chdir=environments/dev validate
terraform -chdir=environments/qa init -backend=false
terraform -chdir=environments/qa validate
terraform -chdir=environments/prod init -backend=false
terraform -chdir=environments/prod validate
```

Maintained by [Harshil Amin](https://github.com/harshilamin).
