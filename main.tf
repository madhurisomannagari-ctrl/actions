# 1. Cloud Run service
# ---------------------------------------------------------------------------
resource "google_cloud_run_v2_service" "app" {
  name     = var.service_name
  location = var.region
  ingress  = "INGRESS_TRAFFIC_ALL"
  invoker_iam_disabled = true

  template {
    containers {
      image = var.container_image
      ports {
        container_port = var.container_port
      }
    }
  }
}
