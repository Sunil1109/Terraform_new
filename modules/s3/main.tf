resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = var.s3-bucket-name
}

resource "aws_s3_bucket_versioning" "s3-versionining" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3-encryption" {
  bucket = aws_s3_bucket.my_s3_bucket.id

  rule {
    apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
    }
  }
}