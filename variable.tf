variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region to deploy Cloud Run service"
  type        = string
  default     = "asia-south1"
}

variable "service_name" {
  description = "Name of the Cloud Run service"
  type        = string
  default     = "realtime-api"
}

variable "container_image" {
  description = "Container image to deploy on Cloud Run"
  type        = string
  default     = "us-docker.pkg.dev/cloudrun/container/hello"
}

variable "container_port" {
  description = "Port the container listens on"
  type        = number
  default     = 8080
}