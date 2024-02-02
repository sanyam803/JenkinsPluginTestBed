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
  project                         = "gceteam"
}

resource "google_container_node_pool" "my_acme_node_pool" {
  name               = "my-acme-node-pool-1"
  cluster            = "my-cluster-1"
  project            = "gceteam"
  initial_node_count = 2

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
  }
}

resource "google_storage_bucket" "my_acem_bucket" {
  name          = "my-acme-bucket"
  location      = "EU"
  force_destroy = true

  project = "gceteam"

  uniform_bucket_level_access = false
}
