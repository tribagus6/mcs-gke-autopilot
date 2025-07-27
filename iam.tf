# project_1 IAM roles for GKE MCS VPC Peering
resource "google_project_iam_member" "workload_identity_cluster1_project1" {
  project    = var.project_1
  role       = "roles/compute.networkViewer"
  member     = format(local.workload_identity_sa, var.project_1)
}

resource "google_project_iam_member" "workload_identity_cluster1_project2" {
  project    = var.project_2
  role       = "roles/compute.networkViewer"
  member     = format(local.workload_identity_sa, var.project_1)
}

resource "google_project_iam_member" "workload_identity_cluster1_project3" {
  project    = var.project_3
  role       = "roles/compute.networkViewer"
  member     = format(local.workload_identity_sa, var.project_1)
}

# project_2 IAM roles for GKE MCS VPC Peering
resource "google_project_iam_member" "workload_identity_cluster2_project1" {
  project    = var.project_1
  role       = "roles/compute.networkViewer"
  member     = format(local.workload_identity_sa, var.project_2)
}

resource "google_project_iam_member" "workload_identity_cluster2_project2" {
  project    = var.project_2
  role       = "roles/compute.networkViewer"
  member     = format(local.workload_identity_sa, var.project_2)
}

resource "google_project_iam_member" "workload_identity_cluster2_project3"{
  project    = var.project_3
  role       = "roles/compute.networkViewer"
  member     = format(local.workload_identity_sa, var.project_2)
}

# project_3 IAM roles for GKE MCS VPC Peering
resource "google_project_iam_member" "workload_identity_cluster3_project1" {
  project    = var.project_1
  role       = "roles/compute.networkViewer"
  member     = format(local.workload_identity_sa, var.project_3)
}

resource "google_project_iam_member" "workload_identity_cluster3_project2" {
  project    = var.project_2
  role       = "roles/compute.networkViewer"
  member     = format(local.workload_identity_sa, var.project_3)
}

resource "google_project_iam_member" "workload_identity_cluster3_project3"{
  project    = var.project_3
  role       = "roles/compute.networkViewer"
  member     = format(local.workload_identity_sa, var.project_3)
}

# GKE Hub and MCS Service Agent IAM roles for all clusters
resource "google_project_iam_member" "gke_hub_service_agent_cluster1_project1" {
  project    = var.project_1
  role       = "roles/gkehub.serviceAgent"
  member     = format(local.gke_hub_sa, data.google_project.project_1.number)
}

resource "google_project_iam_member" "gke_hub_service_agent_cluster1_project2" {
  project    = var.project_2
  role       = "roles/gkehub.serviceAgent"
  member     = format(local.gke_hub_sa, data.google_project.project_1.number)
}

resource "google_project_iam_member" "gke_hub_service_agent_cluster1_project3" {
  project    = var.project_3
  role       = "roles/gkehub.serviceAgent"
  member     = format(local.gke_hub_sa, data.google_project.project_1.number)
}

# MCS Service Agent IAM roles for all clusters
resource "google_project_iam_member" "mcs_service_agent_cluster1_project1" {
  project    = var.project_1
  role       = "roles/multiclusterservicediscovery.serviceAgent"
  member     = format(local.mcs_sa, data.google_project.project_1.number)
}

resource "google_project_iam_member" "mcs_service_agent_cluster1_project2" {
  project    = var.project_2
  role       = "roles/multiclusterservicediscovery.serviceAgent"
  member     = format(local.mcs_sa, data.google_project.project_1.number)
}

resource "google_project_iam_member" "mcs_service_agent_cluster1_project3" {
  project    = var.project_3
  role       = "roles/multiclusterservicediscovery.serviceAgent"
  member     = format(local.mcs_sa, data.google_project.project_1.number)
}