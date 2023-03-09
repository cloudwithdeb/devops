#### Create a Port
kubectl create -f pod.yaml

#### Display running pods
kubectl get pods

#### Display pod with output as yaml
kubectl get pods -o yaml
kubectl get pods -o json
kubectl get pods -o table
kubectl get pods -o wide

# Display all pods in all namespaces
kubectl get pods --all-namespaces

# Display all resources inclusing pods, secrets, configmaps etc....
kubectl get all

### Features Of Deployment
* Upgrades
* Rollbacks
* Scale up and down
* Pause and resume

### Deployment Strategy
* Recreate
* RollingUpdate
* Canary Deployment
* Blue Green Deployment

### Upgrade Deployment
kubectl set image deploy nginx-deploy nginx-cont=nginx:1.9.1
kubectl edit deploy nginx-deploy

# Commands to practice
kubectl rollout status deployment/nginx-deploy
kubectl tollout history deployment/nginx-deploy

# Dealing with evicted pods
kubectl get pods --all-namespaces | grep Evicted | awk '{print $2, "--namespace", $1s}' | xargs kubectl delete pod