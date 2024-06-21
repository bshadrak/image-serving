resource "google_container_cluster" "main" {
  name = var.cluster
  location = var.region
  remove_default_node_pool = true
  initial_node_count = 1
  network = var.vpc
  subnetwork = var.subnetwork
  enable_shielded_nodes = true
}
resource "google_container_node_pool" "main" {
  name = var.node-pool
  location = var.region
  cluster = google_container_cluster.main.name
  node_count = var.nodes
  node_config {
    machine_type = var.machine_type
    oauth_scopes = [ "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring" ]
    metadata = {
        disable-legacy-endpoints = "true"
    }
  }
}