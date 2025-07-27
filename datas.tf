data "google_project" "project_1" {
  project_id = var.project_1
}

data "google_project" "project_2" {
  project_id = var.project_2
}

data "google_project" "project_3" {
  project_id = var.project_3
}

locals {
  mcs_sa               = "serviceAccount:service-%s@gcp-sa-mcsd.iam.gserviceaccount.com"
  workload_identity_sa = "serviceAccount:%s.svc.id.goog[gke-mcs/gke-mcs-importer]"
  gke_hub_sa           = "serviceAccount:service-%s@gcp-sa-gkehub.iam.gserviceaccount.com"
}
