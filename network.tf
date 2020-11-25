resource "google_compute_network" "vpc_network" {
  name = "k8s-node"
}

# We create a public IP address for our google compute instance to utilize
resource "google_compute_address" "static" {
  name = "vm-public-address"
}

