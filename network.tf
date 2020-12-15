resource "google_compute_network" "vpc_network" {
  name = "k8s-node"
}

# We create a public IP address for our google compute instance to utilize
resource "google_compute_address" "static" {
  name = "vm-public-address"
}

resource "google_compute_firewall" "node-join-rule" {
  name    = "node-join-rule"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["6443"]
  }

  source_tags = ["node"]
}

resource "google_compute_firewall" "node-ingress-rule" {
  name    = "node-ingress-rule"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["80", "30000-32767"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "ssh-rule" {
  name = "ssh-rule"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  target_tags = ["node"]
  source_ranges = ["0.0.0.0/0"]
}

