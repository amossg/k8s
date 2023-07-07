variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

# GKE cluster
resource "google_container_cluster" "primary" {
  name     = "${var.project_id}-gke"
  location = var.region
  
  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
}

# Separately Managed Node Pool
resource "google_container_cluster" "cluster" {
  name = "${var.cluster-name}-${terraform.workspace}"
  location = "europe-central2-b"
  initial_node_count = 1
  project = var.project-id
  remove_default_node_pool = true
}

resource "google_container_node_pool" "cluster_node_pool" {
  name       = "${var.cluster-name}-${terraform.workspace}-node-pool"
  location   = "europe-central2-b"
  cluster    = google_container_cluster.cluster.name
  node_count = 1

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = "dev"
    }

    machine_type = "f1-micro"
    preemptible  = true
    #service_account = google_service_account.mysa.email

    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}




