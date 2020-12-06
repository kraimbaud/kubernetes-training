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

    metadata_startup_script = <<-EOF_SCRIPT
        #!bin/bash

        sudo apt-get update
        sudo apt-get install -y \
            apt-transport-https \
            ca-certificates \
            curl \
            gnupg-agent \
            software-properties-common \
            zsh \
            vim
        curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
        sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io

        curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
        cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
        deb https://apt.kubernetes.io/ kubernetes-xenial main
        EOF
        sudo apt-get update
        sudo apt-get install -y kubelet kubeadm kubectl
        sudo apt-mark hold kubelet kubeadm kubectl
    EOF_SCRIPT

    tags = ["node"]
}
