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


resource "google_storage_bucket" "my_acem_bucket" {
  name          = "my-acme-bucket-1"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_acem_bucket" {
  name          = "my-acme-bucket-2"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_acem_bucket" {
  name          = "my-acme-bucket-3"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_acem_bucket" {
  name          = "my-acme-bucket-4"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}
