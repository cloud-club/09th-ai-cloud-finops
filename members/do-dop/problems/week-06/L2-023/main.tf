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

resource "aws_s3_bucket" "s3-bucket-wunp09" {
  bucket = "s3-bucket-wunp09"

  tags = {
    Name        = "s3-bucket-wunp09"
    Purpose     = "athena-query-results"
  }
}

resource "aws_s3_bucket" "s3-bucket-bf8btd" {
  bucket = "s3-bucket-bf8btd"

  tags = {
    Name        = "s3-bucket-bf8btd"
    Purpose     = "athena-query-results"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "s3-bucket-bf8btd" {
  bucket = aws_s3_bucket.s3-bucket-bf8btd.id

  rule {
    id     = "transition-rule"
    status = "Enabled"

    expiration {
      days = 7
    }
  }

}

