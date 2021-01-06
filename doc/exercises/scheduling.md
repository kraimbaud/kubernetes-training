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

- The Worker node 1 only accept pods with `alpha` release. 
- The Worker node 2 only accept pods with `beta` release. 
- The Worker node 3 only accept pods with `stable` release.
[:bulb: response](responses/ex4/ex4-taints-toleration.yaml)
