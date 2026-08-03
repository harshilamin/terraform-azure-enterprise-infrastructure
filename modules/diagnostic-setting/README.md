# Diagnostic Setting Module

Routes Azure resource logs and metrics to a Log Analytics Workspace.

Defaults:

- Log category group: `allLogs`
- Metric category: `AllMetrics`

Some Azure resources expose different diagnostic categories. Override the module inputs when necessary.
