resource "google_compute_network" "bosh-network" {
  auto_create_subnetworks = "false"
  name                    = "bosh-network"
}
