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

resource "google_storage_bucket" "acme_bucket_1" {
  name          = "acme_bucket_1"
  location      = "US"
  force_destroy = true
  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_2" {
  name          = "acme_bucket_2"
  location      = "US"
  force_destroy = true
  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_3" {
  name          = "acme_bucket_3"
  location      = "US"
  force_destroy = true
  
  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}


resource "google_storage_bucket" "acme_bucket_4" {
  name          = "acme_bucket_4"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_5" {
  name          = "acme_bucket_5"
  location      = "US"
  force_destroy = true
  
  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_6" {
  name          = "acme_bucket_6"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"
  
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_7" {
  name          = "acme_bucket_7"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"
  
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_8" {
  name          = "acme_bucket_8"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"
  
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_9" {
  name          = "acme_bucket_9"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"
  
  uniform_bucket_level_access = true
}

