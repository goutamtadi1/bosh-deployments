resource "google_compute_firewall" "jumpbox-external" {
  name = "jumpbox-external"
  network = "bosh-network" 
  project = "bosh-181620"

  allow {
    protocol = "tcp"
    ports    = ["22", "6868"]
  }

  source_ranges = ["0.0.0.0/0"]

}

resource "google_compute_firewall" "jumpbox-internal" {
  name = "jumpbox-internal"
  network = "bosh-network"
  project = "bosh-181620"

  allow{
    protocol = "tcp"
    ports = ["0-65535"]
  }

  source_ranges = ["10.0.0.0/16"]

}

resource "google_compute_firewall" "bosh-internal" {
  name = "bosh-internal"
  network = "bosh-network"
  project = "bosh-181620"

  allow{
    protocol = "tcp"
    ports = ["0-65535"]
  }

  source_ranges = ["10.0.0.0/16"]
 
}
