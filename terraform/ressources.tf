

# Déployer l'application sur Cloud Run
resource "google_cloud_run_service" "cloud_run" {
  name     = "tp-app"
  location = var.region

  template {
    spec {
      containers {
        image = var.docker_image
        env {
          name  = "cpt-bucket"
          value = cpt-bucket
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}



# Rendre le service Cloud Run public
resource "google_cloud_run_service_iam_member" "all_users_invoker" {
  location = google_cloud_run_service.cloud_run.location
  service  = google_cloud_run_service.cloud_run.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}
