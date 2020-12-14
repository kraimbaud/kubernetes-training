resource "google_compute_network" "vpc_network" {
  name = "k8s-node"
}

resource "google_compute_firewall" "node-access-rule" {
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

resource "google_compute_firewall" "ssh-rule" {
  name = "ssh"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  target_tags = ["node"]
  source_ranges = ["0.0.0.0/0"]
}

# We create a public IP address for our google compute instance to utilize
resource "google_compute_address" "static" {
  name = "vm-public-address"
}
