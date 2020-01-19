#!/usr/bin/env bash
kubectl run httpd-app --image=httpd --replicas=2

kubectl run nginx-deployment --image=nginx:1.7.9 --replicas=2

kubectl run busybox --rm -it --image=busybox /bin/sh

# net
kubectl run busybox --rm -it --labels="access=true" --image=busybox /bin/sh

curl https://raw.githubusercontent.com/helm/helm/master/scripts/get | bash

#修改tiller和chart源
helm init --upgrade -i registry.cn-hangzhou.aliyuncs.com/google_containers/tiller:v版本号 --stable-repo-url https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts

kubectl create serviceaccount --namespace kube-system tiller

kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller

kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'

helm lint mychart

helm install --dry-run mychart --debug
