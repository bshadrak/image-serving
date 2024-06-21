resource "google_storage_bucket" "main" {
  name = var.bucket_name
  location = var.region
  uniform_bucket_level_access = true
  force_destroy = true
  # lifecycle_rule {
  #   condition {
  #     age = 3
  #   }
  #   action {
  #     type = "SetStorageClass"
  #     storage_class = "REGIONAL"
  #   }
  # }
  versioning {
    enabled = true
    
  }
}