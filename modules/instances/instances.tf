resource "google_compute_instance" "default" {
    name = var.vm_name
    machine_type = "f1-micro"
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

    metadata_startup_script = "sudo apt-get update && sudo apt-get install -y vim zsh"

    tags = ["node"]
}
