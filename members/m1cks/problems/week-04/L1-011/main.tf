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

resource "aws_s3_bucket" "s3-bucket-56q96s" {
  bucket = "data-lake-raw"

  tags = {
    Name        = "data-lake-raw"
  }
}

resource "aws_s3_bucket" "s3-bucket-f79sot" {
  bucket = "data-lake-archive"

  tags = {
    Name        = "data-lake-archive"
  }
}

resource "aws_s3_bucket" "s3-bucket-8d8ei1" {
  bucket = "data-lake-curated"

  tags = {
    Name        = "data-lake-curated"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "s3-bucket-8d8ei1" {
  bucket = aws_s3_bucket.s3-bucket-8d8ei1.id

  rule {
    id     = "transition-rule"
    status = "Enabled"

    transition {
      days          = 90
      storage_class = "GLACIER"
    }

  }

}

