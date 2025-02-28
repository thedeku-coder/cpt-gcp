output "cloud_run_url" {
  description = "URL publique du service Cloud Run"
  value       = google_cloud_run_service.cloud_run.status[0].url
}


