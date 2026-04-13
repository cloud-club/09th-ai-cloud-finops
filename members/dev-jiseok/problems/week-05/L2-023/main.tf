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

resource "aws_s3_bucket" "s3-bucket-kxtn5c" {
  bucket = "s3-bucket-kxtn5c"

  tags = {
    Name        = "s3-bucket-kxtn5c"
    Purpose     = "athena-query-results"
  }
}

resource "aws_s3_bucket" "s3-bucket-fnw5bq" {
  bucket = "s3-bucket-fnw5bq"

  tags = {
    Name        = "s3-bucket-fnw5bq"
    Purpose     = "athena-query-results"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "s3-bucket-fnw5bq" {
  bucket = aws_s3_bucket.s3-bucket-fnw5bq.id

  rule {
    id     = "transition-rule"
    status = "Enabled"

    expiration {
      days = 7
    }
  }

}

