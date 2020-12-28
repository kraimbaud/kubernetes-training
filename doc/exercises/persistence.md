# Persistence Exercises
For this exercise you will need to create a cluster with only using only one master and one worker. The master shouldn't be
schedulable for Pods.

Create `ex3` namespace and deploy this [wordpress mysql app](resources/ex3-wordpress-mysql.yaml) in your K8s cluster.

    kubectl apply -f https://raw.githubusercontent.com/kraimbaud/kubernetes-training/main/doc/exercises/resources/ex3-wordpress-mysql.yaml

There is one issue with this app. There is no data persistence if we remove and scale pods. Let's fix that. 

### Exercise 3.1 - Volumes

Add a volume to the `mysql` container, so if the pod is deleted we keep the data safe.
[:bulb: response](responses/ex3/ex3-wordpress-mysql.yaml)

