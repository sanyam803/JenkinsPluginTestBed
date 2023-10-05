provider "google" {
  project     = " My First Project"
  credentials = "{
  "type": "service_account",
  "project_id": "mystical-tensor-398614",
  "private_key_id": "91b9e267939c7ea80133e3730d30b8b9401b721e",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDhGyqzNL1YGvyC\n3RLM95QBgD4J4VS0lV8TsDUWiZ+ADayMSLnZhKfRLJbKbaoFsKeitfpZbBhClI3w\notcyLkjSpRHJrLVJr51Bya7FMt4JyIvHzG+s1m99OnO17e0wVm+ZD6Nc9m3pJxYK\ndLtCunBJI6qE25f5xbS2OUMkHKh2bXGrcC/8FFdMjmHoM7CWhU3T1mtwweVJUtms\nGa4KVBtU5yrCmJqLYSGB47X6w/qmyWET6l2242//mJC7hhMjdsrWyDI6P1+EZ/iy\nn/GzjHFWqpXENKG9oA/jXrHHdx4Y61jSCkLHvuMhLzRWZSEzzLoz4IMrf+cAyPB3\nwQpYJPLtAgMBAAECggEADMuRBUeu/YuRz9RwxaLK+xIxiePmKdpAYcDx0OVODNF6\nKIKCbIlG9V5TTI/9ipOXK79WoBpDVMGB7JbXpDwPmp2UYcIbOeQtYaMXopDjdcCR\npW/gPH2h2lyQstt30HgRTCzLNzUGBqst7GE55a9C7lKvK3HEn9zA4AdoOBdtl0bs\n/ane9MhdFM99WGSw+dfyVRH0vXNFry6OWH4GmO+pcwq+LHGA2jqEaq5JPEIXcJck\nXz2snnOk+XcuFp7SQIYo8Rg4G58kJbJQ8Jaqri4/IYG4f3r+Xqdahs1Iz2Y4NkwS\nukhJ6x2vcANg+BT18ES8fgWk90nydX72N2o7oQwk5wKBgQD2S5w9sOL4aLa/dpmj\nklkrmY31KmuMWU/W7cEd0VY8BQs3p+C+UbcXYGkKT30M1WqUM6fbxrHLGeaVUWEj\nkrWpLEkYyyG/dDmzQ+5ynnvJsishwvryo1j0daGl3VUXWPvH1AZD7Iyf16xUBVN+\nGwFf/IPlvJ+JJj143akaez9dHwKBgQDp+dHpM1AfHZ75ZXJrOFCLTVViH3CfzeXW\nINsg6E5UmDLSb/GlePFomR8MHfOCk5V1pzqgKsukqR4rWa4f6Q51ELWDWF/mfcKW\nGGrU+8fMwgBLbwU2ufLpHRhTAY20qRPiVZmxLD8cMZjkLeNf3wh8QvdjfmncoFfJ\nCMMNFbAicwKBgCaQ1Fg8mG25R9RXJ9ubEOdo1ferusdxPLU06WZX3x7q00TVvrVO\nalL4v7njlHsr99JY/FHHnRNmbNq4sXM2h8eDrbZ6KECoXFibrHy6IDwG8AYLV+wi\nc81jlfo43BgZ0OMLaie8pJBq3wsRAm/enqp/CdAxZvG80SdZ3h7NabCVAoGAH2ni\nK/wusq7IbFWZghnCfqF4aD8uYNZFGHW61fU6pxL0J9rNx9iwGMoOKBNRYWOtOmmk\nbmKwisAGA+37ed9RiJggtqzD229hE8PdfBD951jYr0gNnCZlHbVBUcuwmePlford\norL9GizyiRg8IeARBJX9HweW8P86KgyaG4Sg7E8CgYEA3srwkiZcPS0htexNDss1\n8cKY1/i8Xbjhsq0/uEg0Ft2g7r797R2qCFKMksrhkDlPfmwgiSecdMn96ng2FgqX\nkoOBeRrKxJo5nLboKZsMmzvtif07Hz+0bn0UN6wjShR3vTr0UJnBLGVMDUILnMLs\nXGP7EoD9k4a1Ia855/XWMCM=\n-----END PRIVATE KEY-----\n",
  "client_email": "jenkinspoc@mystical-tensor-398614.iam.gserviceaccount.com",
  "client_id": "113621600402672244122",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/jenkinspoc%40mystical-tensor-398614.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}"
  region      = "us-west1"

}

resource "google_compute_network" "vpc1" {
  name                    = "my-custom-network-1"
  auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "my-custom-subnet1" {
  name          = "my-custom-subnet-1"
  ip_cidr_range = "10.255.196.0/24"
  network       = google_compute_network.vpc1.name
  region        = "us-west1-b"
}



#### test file to push
