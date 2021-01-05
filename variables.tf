variable "project" {
  default = "test-project-kraim"
}

variable "credentials" {
  default = "terraform-key.json"
}

variable "region" {
  default = "europe-west1"
}

variable "zone" {
  default = "europe-west1-b"
}

variable "script" {
  default = "./scripts/bootstrap.sh"
}

variable "nb_of_master_nodes" {
  default = 1
}

variable "nb_of_worker_nodes" {
  default = 2
}
