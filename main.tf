terraform {
  required_version = "~>0.12"
  backend "local" {}
}

module "compute_instance" {
  source = "./modules/instances"
}
