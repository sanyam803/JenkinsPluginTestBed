provider "google" {
  project = "iac-demo-proj"
  region  = "us-east1"
}

resource "google_storage_bucket" "acme-bucket-2" {
  name          = "acme-bucket-6"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = false
}
