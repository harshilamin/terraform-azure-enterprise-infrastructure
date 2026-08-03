# AKS Operations

## Retrieve credentials

```bash
az aks get-credentials   --resource-group <resource-group>   --name <cluster-name>
```

For production private clusters, run administration commands from a connected private network or approved management host.

## Health checks

```bash
kubectl get nodes
kubectl get pods --all-namespaces
kubectl get events --all-namespaces
```

## Upgrade workflow

1. Review supported Kubernetes versions
2. Test the upgrade in Dev
3. Promote to QA
4. Schedule and approve Production
5. Validate workloads, ingress, networking, and monitoring
