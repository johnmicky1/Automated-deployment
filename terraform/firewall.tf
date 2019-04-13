resource "google_compute_firewall" "css-firewall" {
  name    = "css-clock-firewallrule"
  network = "${google_compute_network.css-clock-Application.name}"

  allow {
    protocol = "udp"
        
  }
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  target_tags = ["css-clock"]
}
resource "google_compute_firewall" "css-firewall-deny" {
  name    = "css-clock-firewall-deny"
  network = "${google_compute_network.css-clock-Application.name}"

  allow
 {
    protocol = "icmp"
        
  }

  target_tags = ["css-clock"]
}





