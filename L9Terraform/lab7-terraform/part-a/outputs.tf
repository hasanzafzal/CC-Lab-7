output "bucket_id" {
  value = aws_s3_bucket.main.id
}

output "versioning_status" {
  value = aws_s3_bucket_versioning.main.versioning_configuration[0].status
}

