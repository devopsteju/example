provider "google" {
   credentials = "${file("auth.json")}"
   project     = "${var.project}"
   region      = "${var.region}"
 }