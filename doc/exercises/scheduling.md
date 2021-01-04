# Scheduling Exercises

Create `n4` namespace and deploy those objects in your K8s cluster.

    kubectl apply -f https://raw.githubusercontent.com/kraimbaud/kubernetes-training/main/doc/exercises/resources/ex4-labels-selectors.yaml

### Exercise 4.1 - Labels and Selectors

After deploying the resources, anwser those questions:

- How many pods are in `dev`?
- How many pods are in `production`?
- What is the name of the `front-end` pods in `dev`?
- What is the name of the `back-end` pods in `prod`?   
[:bulb: response](responses/ex4/ex4-labels-selectors.yaml)
