# Run Vagrant
vagrant plugin install vagrant-docker-compose
vagrant up
open http://localhost:3000/

# Run Docker
docker-compose up
open http://localhost:3000/

## Run Kubernetes
bash run_kubernetes.sh
kubectl get svc application -o yaml | grep nodePort
    nodePort: 31098
open http://localhost:31098
