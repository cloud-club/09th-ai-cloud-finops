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

resource "aws_s3_bucket" "s3-bucket-u83y8l" {
  bucket = "s3-bucket-u83y8l"

  tags = {
    Name        = "s3-bucket-u83y8l"
    Purpose     = "athena-query-results"
  }
}

resource "aws_s3_bucket" "s3-bucket-5zt6cn" {
  bucket = "s3-bucket-5zt6cn"

  tags = {
    Name        = "s3-bucket-5zt6cn"
    Purpose     = "athena-query-results"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "s3-bucket-5zt6cn" {
  bucket = aws_s3_bucket.s3-bucket-5zt6cn.id

  rule {
    id     = "transition-rule"
    status = "Enabled"

    expiration {
      days = 7
    }
  }

}

