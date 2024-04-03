provider "google" {
  project = "iac-demo-proj"
  region  = "us-east1"
}

resource "google_storage_bucket" "acme-bucket-60" {
  name          = "acme-bucket-60"
  location      = "US"
  project = "iac-demo-proj" 
  force_destroy = true
 
  uniform_bucket_level_access = false
}
