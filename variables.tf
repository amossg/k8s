variable "project_id" {
  description = "The project ID to host the cluster in"
  data        = "celtic-beacon-387519"
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "gke-on-vpc-cluster"
   data       = "gke-on-vpc-cluster"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-central2"
  data        
}

variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network"
  data        = "gke-network"
}

variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "gke-subnet"
  data        = "gke-subnet"
}

variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
  data        = "ip-range-pods"
}

variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-svc"
  data        = "ip-range-svc"
}
