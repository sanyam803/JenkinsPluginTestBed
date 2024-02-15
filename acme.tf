terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

variable "logging_info" {
  type = map
  default  = {
   log_bucket = "example-logs-bucket"
   log_object_prefix = "log_object_prefix"
  } 
}

provider "google" {
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "acme_bucket_a" {
  name          = "acme_bucket_a"
  location      = "US"
  force_destroy = true
  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_b" {
  name          = "acme_bucket_b"
  location      = "US"
  force_destroy = true
  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_c" {
  name          = "acme_bucket_c"
  location      = "US"
  force_destroy = true
  
  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}


