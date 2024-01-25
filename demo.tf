provider "google" {
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = file("creds.json")
}

resource "google_storage_bucket" "bad-bucket" {
  name                        = "bad-bucket"
  location                    = "US"
  storage_class               = "STANDARD"
  project                     = "adsPA"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "good-bucket" {
  name                        = "good-bucket"
  location                    = "US"
  storage_class               = "STANDARD"
  project                     = "adsPA"
  uniform_bucket_level_access = false
}

resource "google_container_node_pool" "good_node_pool" {
  name       = "good-node-pool"
  cluster    = "my-cluster-1"
  project = "adsPA"
  initial_node_count = 3

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
  }
  management {
    auto_upgrade = true
  }
}


resource "google_container_node_pool" "bad-node-pool" {
  name       = "bad-node-pool"
  cluster    = "my-cluster-1"
  project = "adsPA"
  initial_node_count = 2

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
  }

  management {
    auto_upgrade = false
  }
}
 
resource "google_container_cluster" "good_cluster" {
  name     = "my-good-gke-cluster"
  location = "us-central1"
  project = "adsPA"

  initial_node_count = 3
}
 
resource "google_container_cluster" "bad_cluster" {
  name     = "my-bad-gke-cluster"
  location = "us-central1"
   project = "adsPA"

  initial_node_count = 2
}
