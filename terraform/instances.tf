resource "google_compute_instance""clock-instance" {
  name         = "css-clock"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"

  tags = ["css-clock"]

  network_interface {
    network = "${google_compute_network.css-clock-Application.name}"

    access_config {
     nat_ip=""
    }
  }

  boot_disk{
    initialize_params{
         image="css-clock-app-janet-18"
	}
  }
  
}


