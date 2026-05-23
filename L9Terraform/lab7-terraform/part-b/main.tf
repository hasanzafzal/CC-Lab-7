resource "aws_s3_bucket" "bucket_a" {
  bucket = "bse6-lab7-state-bucket-a"
}

resource "aws_s3_bucket" "bucket_secondary" {
  bucket = "bse6-lab7-state-bucket-b"
}
