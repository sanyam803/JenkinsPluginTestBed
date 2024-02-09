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

variable "logging_config" {
  logging {
      log_bucket = "example-logs-bucket"
      log_object_prefix = "log_object_prefix"
  }
}

resource "google_storage_bucket" "acme_bucket_1" {
  name          = "acme_bucket_1"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"
  logging {
    log_bucket = "example-logs-bucket"
    log_object_prefix = "log_object_prefix"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_2" {
  name          = acme_bucket_2"
  location      = "US"
  force_destroy = true
  var.logging_config
  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_3" {
  name          = "acme_bucket_3"
  location      = "US"
  force_destroy = true
  var.logging_config
  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
}


resource "google_storage_bucket" "acme_bucket_4" {
  name          = "acme_bucket_4"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"
  logging {
    log_bucket = "example-logs-bucket"
    log_object_prefix = "log_object_prefix"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_5" {
  name          = "acme_bucket_5"
  location      = "US"
  force_destroy = true
  logging {
    log_bucket = "example-logs-bucket"
    log_object_prefix = "log_object_prefix"
  }

  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "acme_bucket_6" {
  name          = "acme_bucket_6"
  location      = "US"
  force_destroy = true

  project = "acme-data-ingestion-4"
  logging {
    log_bucket = "example-logs-bucket"
    log_object_prefix = "log_object_prefix"
  }

  uniform_bucket_level_access = true
}
