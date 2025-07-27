resource "google_container_cluster" "cluster1" {
  project                  = var.project_1
  name                     = "cluster1"
  location                 = "asia-southeast1"
  enable_autopilot         = true
  network                  = data.google_compute_network.vpc1.id
  subnetwork               = data.google_compute_subnetwork.subnet1.id
  enable_l4_ilb_subsetting = true
  # ip_allocation_policy {
  #   cluster_secondary_range_name  = "pods-range"
  #   services_secondary_range_name = "services-range"
  # }
  private_cluster_config {
    enable_private_nodes = true
  }
  workload_identity_config {
    workload_pool = "${var.project_1}.svc.id.goog"
  }
  release_channel {
    channel = "STABLE"
  }
  fleet {
    project = var.project_1
  }
  enterprise_config {
    desired_tier = "STANDARD"
  }
  cluster_autoscaling {
    auto_provisioning_defaults {
      oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
      disk_size       = 20
      disk_type       = "pd-balanced"
    }
  }
  deletion_protection = false
}

resource "google_container_cluster" "cluster2" {
  project                  = var.project_2
  name                     = "cluster2"
  location                 = "asia-southeast1"
  enable_autopilot         = true
  network                  = data.google_compute_network.vpc2.id
  subnetwork               = data.google_compute_subnetwork.subnet2.id
  enable_l4_ilb_subsetting = true
  # ip_allocation_policy {
  #   cluster_secondary_range_name  = "pods-range"
  #   services_secondary_range_name = "services-range"
  # }
  private_cluster_config {
    enable_private_nodes = true
  }
  workload_identity_config {
    workload_pool = "${var.project_2}.svc.id.goog"
  }
  release_channel {
    channel = "STABLE"
  }
  fleet {
    project = var.project_1
  }
  enterprise_config {
    desired_tier = "STANDARD"
  }
  cluster_autoscaling {
    auto_provisioning_defaults {
      oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
      disk_size       = 20
      disk_type       = "pd-balanced"
    }
  }
  deletion_protection = false
}

resource "google_container_cluster" "cluster3" {
  project                  = var.project_3
  name                     = "cluster3"
  location                 = "asia-southeast1"
  enable_autopilot         = true
  network                  = data.google_compute_network.vpc3.id
  subnetwork               = data.google_compute_subnetwork.subnet3.id
  enable_l4_ilb_subsetting = true
  # ip_allocation_policy {
  #   cluster_secondary_range_name  = "pods-range"
  #   services_secondary_range_name = "services-range"
  # }
  private_cluster_config {
    enable_private_nodes = true
  }
  workload_identity_config {
    workload_pool = "${var.project_3}.svc.id.goog"
  }
  release_channel {
    channel = "STABLE"
  }
  fleet {
    project = var.project_1
  }
  enterprise_config {
    desired_tier = "STANDARD"
  }
  cluster_autoscaling {
    auto_provisioning_defaults {
      oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
      disk_size       = 20
      disk_type       = "pd-balanced"
    }
  }
  deletion_protection = false
}