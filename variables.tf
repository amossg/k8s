# define the GCP authentication file
variable "gcp_auth_file" {
  type = string
  description = "./key.json"
}
# define GCP project name
variable "app_project" {
  type = string
  description = "GCP project name"
  data = "celtic-beacon-387519"
}
# define GCP region
variable "gcp_region_1" {
  type = string
  description = "GCP region"
  data = "europe-central2"
}
# define GCP zone
variable "gcp_zone_1" {
  type = string
  description = "GCP zone"
  data = "europe-central2-b"
}
