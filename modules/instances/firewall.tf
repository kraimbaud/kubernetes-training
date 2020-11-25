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