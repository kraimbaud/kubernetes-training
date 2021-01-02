# Persistence Exercises
For this exercise you will need to create a cluster with only using only one master and one worker. The master shouldn't be
schedulable for Pods.

Create `n3` namespace and deploy this [wordpress mysql app](resources/ex3-wordpress-mysql.yaml) in your K8s cluster.

    kubectl apply -f https://raw.githubusercontent.com/kraimbaud/kubernetes-training/main/doc/exercises/resources/ex3-wordpress-mysql.yaml

There is one issue with this app. There is no data persistence if we remove and scale pods. Let's fix that. 

### Exercise 3.1 - Volumes

Add a volume to the `mysql` container, so if the pod is deleted we keep the data safe.   
[:bulb: response](responses/ex3/ex3-wordpress-mysql.yaml)

> :warning: This approach though, is not recommended in a multi nodes cluster. 
> This is because the pod will use directory path on every nodes and expect all of them to be the same and have the same data, 
> but because nodes are on different servers, there are in fact not the same. Data, then, won't be retrieved on all the nodes.   
> This is why we are working with a single worker cluster for this exercise.   

If you add another node and scale the mysql database `kubectl -n ex3 scale deploy mysql --replicas=4`, you will see that when 
you refresh the page sometimes (when we target a pod to another node) the app is not working. 

To fix that issue replace the volume `hostPath` with a [gcePersistentDisk](https://raw.githubusercontent.com/kraimbaud/kubernetes-training/main/doc/exercises/responses/ex3/ex3-wordpress-mysql.yaml). This GCE PD must already exist.   
PS: You can also choose another Volume Type if you are using another cloud provider.   
[:bulb: response](responses/ex3/ex3-gcePd-mysql.yaml)

### Exercise 3.2 - Persistent Volumes & Claims
In the previous exercise, all the volume configuration was at the pod level. Let's change that by using a Persistence Volume Object, 
and use a pvc to use the volume.   
[:bulb: response](responses/ex3/ex3-pvc-mysql.yaml)

### Exercise 3.3 - Storage Classes
Let's now use Storage classes.   
> :warning: Using the GCECloudProvider in Kubernetes outside of the Google Kubernetes Engine has the following prerequisites (the last point is Kubeadm specific):   
> - The VM needs to be run with a service account that has the right to provision disks.   
> - The Kubelet needs to run with the argument `--cloud-provider=gce`. For this the `KUBELET_KUBECONFIG_ARGS` in `/etc/systemd/system/kubelet.service.d/10-kubeadm.conf` have to be edited.   
> - The Kubelet can then be restarted with `sudo systemctl restart kubelet`
> - The Kubernetes cloud-config file needs to be configured. The file can be found at [/etc/kubernetes/cloud-config](../../cloud-config/gce.yaml) and the content is enough to get the cloud provider to work:

[:bulb: response](responses/ex3/ex3-sc-mysql.yaml)

### Exercise 3.4 - StatefulSets
Now for mysql instead of using a `Deployment` Object, use a `StatefulSets`.   
[:bulb: response](responses/ex3/ex3-statefulsets-mysql.yaml)
