data "google_compute_network" "vpc1" {
  project = var.project_1
  name    = "vpc-c"
}

data "google_compute_subnetwork" "subnet1" {
  project = var.project_1
  name    = "subnet-c-1"
  region  = "asia-southeast1"
}

data "google_compute_network" "vpc2" {
  project = var.project_2
  name    = "vpc-lab-3"
}

data "google_compute_subnetwork" "subnet2" {
  project = var.project_2
  name    = "sb-lab-3"
  region  = "asia-southeast1"
}

data "google_compute_network" "vpc3" {
  project = var.project_3
  name    = "vpc-cluster-b"
}

data "google_compute_subnetwork" "subnet3" {
  project = var.project_3
  name    = "sb-vpc-cluster-b"
  region  = "asia-southeast1"
}