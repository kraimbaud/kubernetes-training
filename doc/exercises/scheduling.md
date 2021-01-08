# Scheduling Exercises
For this exercise you will need to create a cluster **with 3 workers**.

Create `n4` namespace and deploy those objects in your K8s cluster.

    kubectl apply -f https://raw.githubusercontent.com/kraimbaud/kubernetes-training/main/doc/exercises/resources/ex4-labels-selectors.yaml

### Exercise 4.1 - Labels and Selectors

After deploying the resources, anwser those questions:

- How many pods are in `dev`?
- How many pods are in `production`?
- What is the name of the `front-end` pods in `dev`?
- What is the name of the `back-end` pods in `prod`?   

[:bulb: response](responses/ex4/ex4-labels-selectors.md)


### Exercise 4.2 - Taints and Toleration
Add taints and toleration to nodes and pods so:

- The node `worker-1` only accept pods with `alpha` **release**. 
- The node `worker-2` only accept pods with `beta` **release**. 
- The node `worker-3` only accept pods with `stable` **release**.   

[:bulb: response](responses/ex4/ex4-taints-toleration.yaml)

### Exercise 4.3 - Nodes Affinity
Do the same with Node Affinity by adding affinity to nodes so:

- The node `worker-1` only accept pods with `alpha` **release**. 
- The node `worker-2` only accept pods with `beta` **release**. 
- The node `worker-3` only accept pods with `stable` **release**.   

[:bulb: response](responses/ex4/ex4-nodes-affinity.yaml)

### Exercise 4.4 - Managing Resources for Containers
Deploy this new object in `n4` namespace.

    kubectl apply -f https://raw.githubusercontent.com/kraimbaud/kubernetes-training/main/doc/exercises/resources/ex4-resource-limit.yaml

The pod `stress` is not running. Checkout why and fix the problem.   

[:bulb: response](responses/ex4/ex4-resources.yaml)
