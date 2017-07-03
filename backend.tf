terraform {
  backend "gcs" {}
}

// GCP Storage Bucket to store Terraform state
resource "google_storage_bucket" "terraform-state" {
  provider            = "google"
   name               = "terraform-state-gcp"
  location            = "${var.region}"
}

// GCP Location for Terraform state
data "terraform_remote_state" "terraform-state-gcs" {
  backend            = "gcs"
  config {
    project          = "Infrastructure-04"
    bucket           = "terraform-state-gcp"
    path             = "terraform/terraform.tfstate"
  }
}