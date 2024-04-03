provider "google" {
  project = "iac-demo-proj"
  region  = "us-east1"
}

resource "google_storage_bucket" "kishore-bucket-6" {
  name          = "kishore-bucket-3"
  location      = "EU"
  force_destroy = true
  logging {
    log_bucket   = "my-unique-logging-bucket" // Create a separate bucket for logs
    log_object_prefix = "tf-logs/"             // Optional prefix for better structure
  } 
  uniform_bucket_level_access = true
}
