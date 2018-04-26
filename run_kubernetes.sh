kubectl create -f mysql-env-configmap.yaml
kubectl create -f mysql-deployment.yaml
kubectl create -f mysql-service.yaml
kubectl create -f application-env-configmap.yaml
kubectl create -f application-deployment.yaml
kubectl create -f application-service.yaml
