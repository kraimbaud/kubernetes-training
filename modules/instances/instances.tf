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

    provisioner "file" {
        source      = var.script_path
        destination = "/script.sh"
        connection {
            type        = "ssh"
            host        = var.ip_address
            user        = "root"
            private_key = file("~/.ssh/id_rsa")
        }
    }

    provisioner "remote-exec" {
        inline = [
            "chmod +x /script.sh",
            "/script.sh",
        ]
        connection {
            type        = "ssh"
            host        = var.ip_address
            user        = "root"
        }
    }

    tags = ["node"]
}
