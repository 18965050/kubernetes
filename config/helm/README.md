```bash
kubectl create ns kubeapps
kubectl apply -f tiller-admin.yaml
helm install --name kubeapps --namespace kubeapps bitnami/kubeapps
```

