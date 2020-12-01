Minikube
Deploys a one node cluster in a VM locally. Usually used for testing purposes.

Start a cluster
```
minikube start
```
Command line tool to be used along - Kubectl

Check the cluster details. 
```
kubectl cluster-info
```
To view the nodes in a cluster. 
```
kubectl get nodes
```
To list the replication controllers you created in the cluster 
```

kubectl get rc
```

To deploy an application :- 
```
kubectl create deployment <deployment-name> --image=<image-location>

```
Get Deployments 

```
kubectl get deployments
```

Create a proxy 

```
kubectl proxy
```
This will create a connection between the host and the cluster. The proxy enables direct access to the API's from the terminal.

Some troubleshooting methods:- 

Get a list of pods 

```
kubectl get pods
```
Check what containers are running inside the pods.

```
kubectl describe pods (has more information including IP's, ports used etc.)
```
View the container logs

```
kubectl logs <pod-name> (can specifiy container name too)
```
Executing commands on container 

```
kubectl exec <container-name> <command>
```
Using Service to expose apps.
Creating a service and exposing it to external traffic 

```
kubectl expose <deployment-name> --type=NodePort --port 8080
```

Scale up 

```
kubectl scale <deployment-name> --replicas=<number>
```
Scale down 

```
kubectl scale <deployment-name> --replicas=<number>
```
Updating applications
Changing the image 

```
kubectl set image <deployment-name>=<new-image-version>
```
Confirm the update using rollout 

```
kubectl rollout status <deployment-name> -Rollback an update kubectl rollout undo <deployment-name>
```
Dashboard
Enable the dashboard using minikube:- 

```
minikube addons enable dashboard (Have to use a yaml file for deployment and config, check here.
```

Delete all the resources by running 
```
kubectl delete -f filename (deletes all the clusters and controllers associated)
```
