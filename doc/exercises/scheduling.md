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


### Exercise 4.2 - Taints and toleration

[:bulb: response](responses/ex4/ex4-taints-toleration.md)
sudo kubeadm join 10.132.0.3:6443 --token eueij3.l7c0bzuweneh7x4a \
--discovery-token-ca-cert-hash sha256:315871cbc444458ddfde4e6ebcde47d143c65c95c985cb1446a43f5148c65ec6
