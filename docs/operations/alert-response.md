# Alert Response

## Storage availability

1. Confirm whether the alert is isolated or regional.
2. Review Azure Service Health.
3. Check storage diagnostic logs and metrics.
4. Validate application connectivity.
5. Review private DNS and private endpoint health.
6. Escalate based on environment criticality.

## Container Registry capacity

1. Review current registry storage usage.
2. Identify stale images and unreferenced tags.
3. Confirm retention and cleanup policies.
4. Avoid deleting images used by active deployments.
5. Increase capacity or adjust the threshold when justified.

## Alert ownership

Every alert should have:

- A named service owner
- A documented severity
- A response procedure
- A tested notification route
- A review date
