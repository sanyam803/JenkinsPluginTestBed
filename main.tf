provider "google" {
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = file("creds.json")
}

resource "google_compute_network" "vpc1" {
  name                    = "mocksuccess"
  auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "my-custom-subnet1" {
  name          = "my-custom-subnet-1"
  ip_cidr_range = "10.255.196.0/24"
  network       = google_compute_network.vpc1.name
  region        = "us-west1-b"
}




#### test file to push
