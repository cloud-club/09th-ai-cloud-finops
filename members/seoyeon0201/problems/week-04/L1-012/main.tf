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

resource "aws_s3_bucket" "s3-bucket-0y48j1" {
  bucket = "app-assets-prod"

  tags = {
    Name        = "app-assets-prod"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-0y48j1" {
  bucket = aws_s3_bucket.s3-bucket-0y48j1.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "s3-bucket-g2rct8" {
  bucket = "app-assets-staging"

  tags = {
    Name        = "app-assets-staging"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-g2rct8" {
  bucket = aws_s3_bucket.s3-bucket-g2rct8.id

  versioning_configuration {
    status = "Enabled"
  }
}

