resource "google_storage_bucket" "static-site" {
  project       = "deliverycenter-prod"
  name          = "wheel-of-misfortune.deliverycenter.com"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "index.html"
  }
  cors {
    origin          = ["https://wheel-of-misfortune.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}