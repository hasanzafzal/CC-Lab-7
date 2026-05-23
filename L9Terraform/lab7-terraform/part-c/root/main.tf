module "app_bucket" {
  source = "../../modules/s3-bucket"

  bucket_name       = "bse6-lab7-app-bucket"
  enable_versioning = true
}

module "logs_bucket" {
  source = "../../modules/s3-bucket"

  bucket_name       = "bse6-lab7-logs-bucket"
  enable_versioning = false
}
