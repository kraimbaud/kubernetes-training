resource "google_compute_network" "vpc_network" {
  name = "k8s-node"
}

# We create a public IP address for our google compute instance to utilize
resource "google_compute_address" "static" {
  name = "vm-public-address"
}

resource "google_compute_firewall" "default" {
  name    = "k8s-firewall"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "6443"]
  }

  source_tags = ["node"]
}
