Create your own Cluster from Scratch
====================================

The purpose of this project is to understand how to create your own cluster from scratch on GCP.

## How does it work ?
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
nb_of_master_nodes = 3
nb_of_worker_nodes = 3
```
and then execute
```bash
terraform apply -var-file="custom.tfvars"
```

## Links



