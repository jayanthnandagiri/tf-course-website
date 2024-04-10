terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.2.0"
    }
  }
  backend "gcs" {
    bucket = "roidtc-240408-user501-tf-state"
    prefix = "terraform/state"
  }

}


provider "google" {

  project = var.project_id

}
