
#Define variables
CONFIGMAP_NAME="configurations"

#Create configmap from file in a directory
kubectl create configmap $CONFIGMAP_NAME --from-file=dir

#Create configmap from literal
kubectl create configmap $CONFIGMAP_NAME --from-literal=username="Justice"

#Get configmaps
kubectl get configmap
kubectl get configmap -o wide
kubectl get configmap -o yaml
kubectl get configmap -o json

#Describe configmaps
kubectl describe configmap $CONFIGMAP_NAME

#Delete configmap
kubectl delete configmap $CONFIGMAP_NAME