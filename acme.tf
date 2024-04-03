terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

provider "google" {
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "acme_bucket_a2" {
  name          = "acme_bucket_a2"
  location      = "EU"
  force_destroy = true
  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}
