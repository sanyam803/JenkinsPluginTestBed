terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "scenario1-410113"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "bad-network"{
  name                            = "bad-network-1"
  delete_default_routes_on_create = false
  auto_create_subnetworks         = false
  routing_mode                    = "REGIONAL"
  mtu                             = 100
  project                         = "gceteam"
}

resource "google_container_node_pool" "my_bad_node_pool" {
  name               = "my-bad-node-pool-1"
  cluster            = "my-cluster-1"
  project            = "gceteam"
  initial_node_count = 2

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
  }
}
