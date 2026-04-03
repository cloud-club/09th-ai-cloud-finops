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

resource "aws_s3_bucket" "s3-bucket-cof8hw" {
  bucket = "app-assets-prod"

  tags = {
    Name = "app-assets-prod"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-cof8hw" {
  bucket = aws_s3_bucket.s3-bucket-cof8hw.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "s3-bucket-cof8hw" {
  bucket = aws_s3_bucket.s3-bucket-cof8hw.id

  rule {
    id     = "optimize-current-and-noncurrent-versions"
    status = "Enabled"

    filter {
      prefix = ""
    }

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 90
      storage_class = "GLACIER"
    }

    noncurrent_version_transition {
      noncurrent_days = 30
      storage_class   = "STANDARD_IA"
    }

    noncurrent_version_transition {
      noncurrent_days = 90
      storage_class   = "GLACIER"
    }

    noncurrent_version_expiration {
      noncurrent_days = 30
    }
  }

  depends_on = [aws_s3_bucket_versioning.s3-bucket-cof8hw]
}

resource "aws_s3_bucket" "s3-bucket-h76f94" {
  bucket = "app-assets-staging"

  tags = {
    Name = "app-assets-staging"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-h76f94" {
  bucket = aws_s3_bucket.s3-bucket-h76f94.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "s3-bucket-h76f94" {
  bucket = aws_s3_bucket.s3-bucket-h76f94.id

  rule {
    id     = "optimize-current-and-noncurrent-versions"
    status = "Enabled"

    filter {
      prefix = ""
    }

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 90
      storage_class = "GLACIER"
    }

    noncurrent_version_transition {
      noncurrent_days = 30
      storage_class   = "STANDARD_IA"
    }

    noncurrent_version_transition {
      noncurrent_days = 90
      storage_class   = "GLACIER"
    }

    noncurrent_version_expiration {
      noncurrent_days = 30
    }
  }

  depends_on = [aws_s3_bucket_versioning.s3-bucket-h76f94]
}