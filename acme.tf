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


resource "google_storage_bucket" "my_acem_bucket_a11" {
  name          = "my-acme-bucket-a11"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_acem_bucket_b11" {
  name          = "my-acme-bucket-b11"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_acem_bucket_c11" {
  name          = "my-acme-bucket-c11"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}
