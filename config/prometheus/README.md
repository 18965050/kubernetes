```bash
helm delete monitor --purge
kubectl delete crd prometheuses.monitoring.coreos.com
kubectl delete crd prometheusrules.monitoring.coreos.com
kubectl delete crd servicemonitors.monitoring.coreos.com
kubectl delete crd alertmanagers.monitoring.coreos.com
kubectl create ns monitor
kubectl apply -f monitor-admin.yaml
helm install --name monitor --namespace monitor stable/prometheus-operator
```

