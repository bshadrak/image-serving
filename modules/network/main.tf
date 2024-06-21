resource "google_compute_network" "main" {
  name = var.network_name
  project = var.project
  auto_create_subnetworks = "false"
}
resource "google_compute_subnetwork" "main" {
    for_each = var.subnets
  name = each.key
  region = each.value.region
  ip_cidr_range = each.value.ip_cidr_range
  network = google_compute_network.main.name
  project = var.project
}
resource "google_compute_firewall" "main" {
    for_each = var.firewalls
  name = each.key
  network = google_compute_network.main.name
  allow {
    ports = each.value.ports
    protocol = each.value.protocol
  }
  source_ranges = each.value.source_ranges
  target_tags = each.value.target_tags
  project = var.project
}