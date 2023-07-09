variable "project_id" {
  description = "The project ID of your project"
   default     = "celtic-beacon-387519"
}
variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "gke-terraform"
}
variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "learn"
}
variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-central2"
}
variable "zones" {
  description = "Cluster zone"
  default     = "europe-central2-b"
}
variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network"
}
variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "gke-subnet"
}
variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
}
variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services"
}

variable "service-account-id" {
  description = "The ID of service account of GCP"
  default     = "serviceaccount-id"
}
variable "cpus" {
  description = "Number of cpus"
  default     = "2"
}

variable "minnode" {
  description = "Minimum number of node pool"
  default     = 1
}
variable "maxnode" {
  description = "Maximum number of node pool"
  default     = 1
}

variable "disksize" {
  description = "Disk Size in GB"
  default     = 20
}

variable "project_id" {
  description = "The project ID of your project"
   default     = "celtic-beacon-387519"
}
variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "gke-terraform"
}
variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "learn"
}
variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-central2"
}
variable "zones" {
  description = "Cluster zone"
  default     = "europe-central2-b"
}
variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network"
}
variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "gke-subnet"
}
variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
}
variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services"
}

variable "service-account-id" {
  description = "The ID of service account of GCP"
  default     = "serviceaccount-id"
}
variable "cpus" {
  description = "Number of cpus"
  default     = "2"
}

variable "minnode" {
  description = "Minimum number of node pool"
  default     = 1
}
variable "maxnode" {
  description = "Maximum number of node pool"
  default     = 1
}

variable "disksize" {
  description = "Disk Size in GB"
  default     = 20
}


# variable "database_name_prefix" {
#   description = "Prefix for the database name"
# }

# variable "database_version" {
#   description = "Database version"
# }

# variable "availability_type" {
#   description = "Availability type for HA"
# }

# variable "sql_instance_size" {
#   description = "Size of Cloud SQL instances"
# }

# variable "sql_disk_type" {
#   description = "Cloud SQL instance disk type"
# }

# variable "sql_disk_size" {
#   description = "Storage size in GB"
# }

# variable "sql_require_ssl" {
#   description = "Enforce SSL connections"
# }

# variable "sql_master_zone" {
#   description = "Zone of the Cloud SQL master (a, b, ...)"
# }

# variable "sql_user" {
#   description = "Username of the host to access the database"
# }

# variable "sql_pass" {
#   description = "Password of the host to access the database"
# }
