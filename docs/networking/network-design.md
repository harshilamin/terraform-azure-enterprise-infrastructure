# Network Design

| Environment | Hub | Spoke | AKS subnet | App subnet |
|---|---|---|---|---|
| Dev | 10.0.0.0/16 | 10.10.0.0/16 | 10.10.1.0/24 | 10.10.2.0/24 |
| QA | 10.0.0.0/16 | 10.20.0.0/16 | 10.20.1.0/24 | 10.20.2.0/24 |
| Prod | 10.0.0.0/16 | 10.30.0.0/16 | 10.30.1.0/24 | 10.30.2.0/24 |

This portfolio models an independent hub per environment. A real enterprise may host a shared hub in a dedicated connectivity subscription.
