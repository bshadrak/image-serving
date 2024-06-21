terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "3.69.0"
    }
  }
}
provider "google" {
  project = "terraform-practice-production"
  region = "us-west1"
  zone = "us-west1-a"
  credentials = "prod.json"
}
provider "google" {
  alias = "us-east1"
  project = "terraform-practice-production"
  region = "us-east1"
  zone = "us-east1-a"
  credentials = "prod.json"
}