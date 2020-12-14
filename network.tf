resource "google_compute_network" "vpc_network" {
  name = "k8s-node"
}

resource "google_compute_firewall" "default" {
  name    = "k8s-firewall"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "6443", "30000-32767"]
  }

  source_tags = ["node"]
  source_ranges = ["0.0.0.0/0"]
}

# We create a public IP address for our google compute instance to utilize
resource "google_compute_address" "static" {
  name = "vm-public-address"
}
