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

resource "aws_s3_bucket" "s3-bucket-nb9qtp" {
  bucket = "app-assets-prod"

  tags = {
    Name        = "app-assets-prod"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-nb9qtp" {
  bucket = aws_s3_bucket.s3-bucket-nb9qtp.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "s3-bucket-c3hawv" {
  bucket = "app-assets-staging"

  tags = {
    Name        = "app-assets-staging"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-c3hawv" {
  bucket = aws_s3_bucket.s3-bucket-c3hawv.id

  versioning_configuration {
    status = "Enabled"
  }
}

