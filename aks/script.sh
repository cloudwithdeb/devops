# update kubernetes cluster to integrate azure container registry to it
CONTAINER_RG='sibac'
AKS_NAME='Siba'
AKS_RG='Siba'

# Update kubernetes cluster to attach container registry
az aks update -n $AKS_NAME -g $AKS_RG --attach-acr $CONTAINER_RG

# Update kubernetes cluster to detach container registry
az aks update -n $AKS_NAME -g $AKS_RG --detach-acr $CONTAINER_RG

# Build docker image using acr
az acr build  --image spring/app:v1 --registry $REGISTRY_NAME

kubectl run hw --image=sibac.azurecr.io/hello-worl:v1

az acr import -n container-rg \
--source docker.io/library/nginx:latest \
--image nginx:v1

az acr repository list --name container-rg -o table
