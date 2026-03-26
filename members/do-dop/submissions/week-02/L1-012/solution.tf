terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3_bucket_p98ab1" {
  bucket = "app-assets-prod"

  tags = {
    Name = "app-assets-prod"
  }
}

# Keep versioning enabled if rollback/audit history is still required.
resource "aws_s3_bucket_versioning" "s3_bucket_p98ab1" {
  bucket = aws_s3_bucket.s3_bucket_p98ab1.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Add lifecycle rules to automatically clean up old versions and reduce storage costs.
resource "aws_s3_bucket_lifecycle_configuration" "s3_bucket_p98ab1" {
  bucket = aws_s3_bucket.s3_bucket_p98ab1.id

  rule {
    id     = "cleanup-noncurrent-versions"
    status = "Enabled"

    filter {
      prefix = ""
    }

    noncurrent_version_expiration {
      noncurrent_days = 30
    }

    abort_incomplete_multipart_upload {
      days_after_initiation = 7
    }
  }
}