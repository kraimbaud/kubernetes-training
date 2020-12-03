resource "google_compute_instance" "default" {
    name = var.vm_name
    machine_type = "e2-standard-2"
    zone = "europe-west1-b"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }

    network_interface {
        network = var.network
        access_config {
            // Include this section to give the VM an external IP address
        }
    }

    metadata_startup_script = "sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common zsh vim"

    tags = ["node"]
}
