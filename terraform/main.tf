provider "google" {
  project = "sukanya-project-452710"
  region  = "us-central1"
}

resource "google_container_cluster" "primary" {
  name     = "k8s-cluster"
  location = "us-central1-c"

  initial_node_count = 2
  node_config {
    machine_type = "e2-medium"
  }
}
