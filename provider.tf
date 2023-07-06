provider "google" {
  credentials = file("./key.json")
  project     = "celtic-beacon-387519"
  region      = "europe-central2"
  version     = "~> 2.5.0"
}
