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

resource "google_compute_network" "acme-network"{
  name                            = "acme-network-1"
  delete_default_routes_on_create = false
  auto_create_subnetworks         = false
  routing_mode                    = "REGIONAL"
  mtu                             = 100
  project                         = "acme-data-ingestion-4"
}


resource "google_storage_bucket" "my_acem_bucket" {
  name          = "my-acme-bucket"
  location      = "EU"
  force_destroy = true

  project = "acme-data-ingestion-4"

  uniform_bucket_level_access = false
}
