Kubernetes Training Program
===========================
The purpose of this project is to understand how to create your own cluster from scratch on GCP
 and train your K8s skill to get better.

### Where to start ?
- Create your GCP project: [Google Cloud Console](https://console.cloud.google.com/home/dashboard)
- Create a new service account name `terraform` and generate a new key `terraform-key.json`, that you will put at the root of your project.  
Use the [project editor role](https://cloud.google.com/iam/docs/understanding-roles?hl=en) for this service account. 
- [Install terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Run those following commands:

```bash
terraform init
terraform apply
```

It will create 1 master node with 2 worker nodes.   
If you want to change that behavior you need to create a `custom.tfvars` file with your own value
```
nb_of_master_nodes = 1
nb_of_worker_nodes = 3
```
and then execute
```bash
terraform apply -var-file="custom.tfvars"
```

### Create Kubernetes Cluster 
Initialize Kubernetes Cluster 
```bash
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
```

Deploying POD network (Using flannel). 
You can also use other network on [the official K8s documentaion](https://kubernetes.io/docs/concepts/cluster-administration/networking/)
```bash
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
```

### Training ToDo List
Now that you have setup your K8s cluster it's time to train. 
Go to the link bellow and improve your skill step by step

- [Training Program for CKAD and CKA Exam](./doc/training-program.md)


### Links
- https://coreos.com/flannel/docs/latest/kubernetes.html   
- https://github.com/coreos/flannel
- [Connecting to instances as the root user](https://cloud.google.com/compute/docs/instances/connecting-advanced#root)
- [Configure Access to Multiple Clusters](https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/)
