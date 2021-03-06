# Core Concept Exercises
Every object has to be created under the `n1` namespace.

### Exercise 1.1 - Create a Namespace
Create a Namespace call `n1`   
[:bulb: response](responses/ex1/ex1-create-namespace.yaml)

### Exercise 1.2 - Create a Pod
Create a pod which run a nginx image in namespace `n1` using port `80`   
[:bulb: response](responses/ex1/ex1-create-pod.yaml)

### Exercise 1.3 - Create a ReplicaSet
Create a Replica Set of this Pod in namespace `n1`   
[:bulb: response](responses/ex1/ex1-create-rs.yaml)

### Exercise 1.4 - Create a Deployment
Create a Deployment of this Pod in namespace `n1`

| Config       | Value     |
| -------------| ----------|
| Images       | nginx     |
| Port         | 80        |
| Replicas     | 3         |

[:bulb: response](responses/ex1/ex1-create-deploy.yaml)

### Exercise 1.5 - Use a Service to Expose a Deployment
Expose your Deployment in namespace `n1`

| Config       | Value     |
| -------------| ----------|
| Service Name | nginx     |
| Port         | 80        |
| Target Port  | 80        |
| Service Type | NodePort  |

[:bulb: response](responses/ex1/ex1-create-service.yaml)

### Exercise 1.6 - Create a HPA

Create an HPA with the Deployment in namespace `n1`


