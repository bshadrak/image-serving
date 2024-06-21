module "network" {
  source = "../../../../modules/network"
}

module "gke" {
  source = "../../../../modules/application-gke"
}
module "gcs" {
  source = "../../../../modules/data"
}