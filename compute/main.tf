terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("../pvt/key.json")
  project     = "centering-brook-408512"
  region      = "asia-south1"
  zone        = "asia-south1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
