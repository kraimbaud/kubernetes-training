resource "google_compute_disk" "data" {
  name  = "data"
  type  = "pd-ssd"
  zone  = var.zone
  size  = "200GB"
}
