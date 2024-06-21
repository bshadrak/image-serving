output "network" {
  value = google_compute_network.main
}
output "network_name" {
  value = google_compute_network.main.name
}
output "network_id" {
  value = google_compute_network.main.id
}
output "network_selflink" {
  value = google_compute_network.main.self_link
}