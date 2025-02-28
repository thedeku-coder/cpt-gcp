variable "project_id" {
  description = "L'identifiant du projet GCP"
  type        = string
}

variable "region" {
  description = "La région GCP"
  type        = string
  default     = "europe-west1"
}

variable "zone" {
  description = "La zone GCP"
  type        = string
  default     = "europe-west1-b"
}

variable "docker_image" {
  description = "Le nom complet de l'image Docker à déployer sur Cloud Run"
  type        = string
}
