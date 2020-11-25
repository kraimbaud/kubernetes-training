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
terraform plan 
terraform apply
```

It will crete 5 VM on GCP. The purpose is to setup yourself 2 masters and 3 workers. 

## Links



