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


resource "google_storage_bucket" "my_acem_bucket_a" {
  name          = "my-acme-bucket-a"
  location      = "EU"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
  logging {
    log_bucket = "example-logs-bucket"
    log_object_prefix = "log_object_prefix"
  }
}

resource "google_storage_bucket" "my_acem_bucket_b" {
  name          = "my-acme-bucket-b"
  location      = "EU"
  force_destroy = true

  project = "acme-data-ingestion-4"
  logging {
    log_bucket = "example-logs-bucket"
    log_object_prefix = "log_object_prefix"
  }
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my_acem_bucket_d" {
  name          = "my-acme-bucket-d"
  location      = "EU"
  force_destroy = true

  project = "acme-data-ingestion-4"
  logging {
    log_bucket = "example-logs-bucket"
    log_object_prefix = "log_object_prefix"
  }

  uniform_bucket_level_access = true
}
