locals {
  prefix = "bse6-pipeline-dev"
}

module "input_bucket" {
  source = "../modules/s3-bucket"

  bucket_name = "${local.prefix}-input"
}

module "processed_bucket" {
  source = "../modules/s3-bucket"

  bucket_name       = "${local.prefix}-processed"
  enable_versioning = true
}

module "logs_bucket" {
  source = "../modules/s3-bucket"

  bucket_name = "${local.prefix}-logs"
}
