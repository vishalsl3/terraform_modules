provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  # Enable versioning
  versioning {
    enabled = var.versioning
  }

  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
      }
    }
  }

  # Configure bucket policy
  policy = var.policy

  tags = var.tags
}
