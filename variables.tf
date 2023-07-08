variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "gke-on-vpc-cluster"
  type = string
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-central2"
  type = string
}

variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network"
  type = string
}

variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "gke-subnet" 
  type = string
}

variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
  type = string
}

variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-svc"
  type = string
}
