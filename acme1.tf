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


resource "google_storage_bucket" "my_acem_bucket_a2" {
  name          = "my-acme-bucket-a2"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_acem_bucket_b2" {
  name          = "my-acme-bucket-b2"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_acem_bucket_c2" {
  name          = "my-acme-bucket-c2"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}
