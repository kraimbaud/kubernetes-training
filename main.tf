terraform {
  required_version = "~>0.12"
  backend "local" {}
}

module "master_node_1" {
  source = "./modules/instances"
  vm_name = "master-01"
}

module "master_node_2" {
  source = "./modules/instances"
  vm_name = "master-02"
}

module "worker_node_1" {
  source = "./modules/instances"
  vm_name = "worker-01"
}

module "worker_node_2" {
  source = "./modules/instances"
  vm_name = "worker-02"
}

module "worker_node_3" {
  source = "./modules/instances"
  vm_name = "worker-03"
}
