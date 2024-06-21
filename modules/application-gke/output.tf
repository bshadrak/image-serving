output "cluster" {
  value = google_container_cluster.main.name
}
output "cluster_id" {
  value = google_container_cluster.main.id
}
output "cluster_selflink" {
  value = google_container_cluster.main.self_link
}