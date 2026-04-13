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

resource "aws_s3_bucket" "s3-bucket-dzdvnl" {
  bucket = "s3-bucket-dzdvnl"

  tags = {
    Name        = "s3-bucket-dzdvnl"
    Purpose     = "athena-query-results"
  }
}

resource "aws_s3_bucket" "s3-bucket-1zf4qz" {
  bucket = "s3-bucket-1zf4qz"

  tags = {
    Name        = "s3-bucket-1zf4qz"
    Purpose     = "athena-query-results"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "s3-bucket-1zf4qz" {
  bucket = aws_s3_bucket.s3-bucket-1zf4qz.id

  rule {
    id     = "transition-rule"
    status = "Enabled"

    expiration {
      days = 7
    }
  }

}

