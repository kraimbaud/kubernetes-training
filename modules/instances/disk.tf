resource "google_compute_disk" "data" {
  name  = var.disk-name
  type  = "pd-ssd"
  zone  = var.zone
  size  = "200GB"
}
