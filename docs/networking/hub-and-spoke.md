# Hub-and-Spoke Networking

The hub hosts centralized connectivity and security services. Dev, QA, and Prod use isolated spokes.

Security principles:

- NSGs at subnet level
- Least-privilege inbound rules
- No unnecessary public administration access
- Private endpoints for PaaS
- Controlled routing through Azure Firewall
