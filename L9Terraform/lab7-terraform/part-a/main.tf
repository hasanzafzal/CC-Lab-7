locals {
  bucket_name = "${var.project_name}-${var.environment}-bucket"

  all_tags = merge(var.resource_tags, {
    Project     = var.project_name
    Environment = var.environment
  })
}

resource "aws_s3_bucket" "main" {
  bucket = local.bucket_name
  tags   = local.all_tags
}

resource "aws_s3_bucket_versioning" "main" {
  bucket = aws_s3_bucket.main.id

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Suspended"
  }
}
