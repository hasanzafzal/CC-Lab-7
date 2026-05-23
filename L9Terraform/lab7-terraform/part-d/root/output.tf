output "all_buckets" {
  value = {
    input     = module.input_bucket.bucket_id
    processed = module.processed_bucket.bucket_id
    logs      = module.logs_bucket.bucket_id
  }
}
