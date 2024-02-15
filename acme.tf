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

resource "google_storage_bucket" "acme_bucket_a1" {
  name          = "acme_bucket_a1"
  location      = "US"
  force_destroy = true
  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
  
  logging {
    log_bucket   = "my-unique-logging-bucket" // Create a separate bucket for logs
    log_object_prefix = "tf-logs/"             // Optional prefix for better structure
  }
}

resource "google_storage_bucket" "acme_bucket_b1" {
  name          = "acme_bucket_b1"
  location      = "US"
  force_destroy = true
  project = "acme-data-ingestion-4"
  uniform_bucket_level_access = true
  
  logging {
    log_bucket   = "my-unique-logging-bucket" // Create a separate bucket for logs
    log_object_prefix = "tf-logs/"             // Optional prefix for better structure
  }
  
}

resource "google_storage_bucket" "acme_bucket_c1" {
  name          = "acme_bucket_c1"
  location      = "US"
  force_destroy = true
  
  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = true
  
  logging {
    log_bucket   = "my-unique-logging-bucket" // Create a separate bucket for logs
    log_object_prefix = "tf-logs/"             // Optional prefix for better structure
  }

}


