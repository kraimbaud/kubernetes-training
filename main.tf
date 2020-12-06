terraform {
  required_version = "~>0.12"
  backend "local" {}
}

module "master_node" {
  count = 1
  source = "./modules/instances"
  vm_name = "master-${count.index + 1}"
  network = google_compute_network.vpc_network.name
  script_path = file(var.script)
  ip_address = google_compute_address.static.address
}

module "worker_node" {
  count = 2
  source = "./modules/instances"
  vm_name = "worker-${count.index + 1}"
  network = google_compute_network.vpc_network.name
  script_path = file(var.script)
  ip_address = google_compute_address.static.address
}
