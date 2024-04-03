provider "google" {
  project = "iac-demo-proj"
  region  = "us-east1"
}

resource "google_storage_bucket" "acme-bucket-a6" {
  name          = "acme-bucket-a6"
  location      = "EU"
  project = "iac-demo-proj" 
  force_destroy = true
  logging {
    log_bucket   = "my-unique-logging-bucket" // Create a separate bucket for logs
    log_object_prefix = "tf-logs/"             // Optional prefix for better structure
  } 
  uniform_bucket_level_access = true
}
