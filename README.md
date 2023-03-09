## Title
DevOps complete tutorials

### Kubernetes
Kubernetes is a container orchestration engine used to manage containerized applications. It helps to distribute traffic accross pods running on different nodes in a cluster. It laos support autoscaling. It is made of two parts called:

#### Master Node
It gives instructions to the worker node using `kubectl` (a go thiny binary) to perform a specific task like scheduling a pod. The master node has the following components and they include:

* etcd this is a keyvalue pair database used to store the entire cluster configurations. Example it stores details about pods, nodes, services, deployment etc. eg. when you type `kubectl get pod`, the information displayed are retrieved from the etcd.

* controller this managers the overrall health of the kubernetes cluster. It makes sure the right number of nodes and pods are always running.

* scheduler this is used to provision pod on the worker node. It does so by first selecting the healthy nodes, check the yaml manifest file to compare the configuration defined in them to see if the selected node has enough resources to provision that particular pod.

* apiserver this is a gateway between the master node and the worker node. When master node wont to instruct worker node to perform a specific task, the apiserver establises a secure channel between them

#### Worker Node
The worker node recieves instruction from the master node to perform a specific task like sheduling of pods. The worker node is made of the following components and they include:

* kubelet is an agen installed on a worker node. It does the folowing:
    * It deploy pods on a worker node after a scheduler has selected a healthy worker node.
    * It Starts a pod when it shuts down but when the fault is from the node its self, the master node detect it a try to provision the pod on a new worker node.

* kubeproxy is an agent installed on the worker node. 
    * It manages the entire network on the kubernetes cluster. 
    * It is responsible for exposing pods.

### Note:
* Pod to pod communication is called `inter-pod communication`
* Two or more containers within a pod communication is called `intra-pod communication`
* Namespace are used to isolate or group resources in a kubernetes cluster
