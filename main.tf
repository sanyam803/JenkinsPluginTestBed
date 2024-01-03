provider "google" {
  project     = "tf-deployer-2"
  credentials = file("creds.json")
  region      = "us-west1"

}

resource "google_storage_bucket" "location" {
 name          = "rohit-bucket-location"
 location      = "EU"
 storage_class = "STANDARD"
 project = "rohitproj-375209"
 uniform_bucket_level_access = false
}

resource "google_storage_bucket" "class" {
 name          = "rohit-bucket-storage"
 location      = "EU"
 storage_class = "COLDLINE"
 project = "rohitproj-375209"
 uniform_bucket_level_access = false
}




#### test file to push
