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

resource "aws_s3_bucket" "s3-bucket-l1t83r" {
  bucket = "app-assets-prod"

  tags = {
    Name        = "app-assets-prod"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-l1t83r" {
  bucket = aws_s3_bucket.s3-bucket-l1t83r.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "s3-bucket-4dtyfp" {
  bucket = "app-assets-staging"

  tags = {
    Name        = "app-assets-staging"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-4dtyfp" {
  bucket = aws_s3_bucket.s3-bucket-4dtyfp.id

  versioning_configuration {
    status = "Enabled"
  }
}

