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

resource "aws_s3_bucket" "s3-bucket-vs1gnh" {
  bucket = "static-assets-prod"

  # Static website hosting enabled

  tags = {
    Name        = "static-assets-prod"
  }
}

resource "aws_cloudfront_distribution" "cloudfront-distribution-511fik" {
  enabled         = true
  is_ipv6_enabled = true
  comment         = "CloudFront distribution"
  price_class     = "PriceClass_All"

  origin {
    domain_name = "media-assets-prod.s3.amazonaws.com"
    origin_id   = "S3Origin"

  }

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "S3Origin"
    viewer_protocol_policy = "redirect-to-https"
    compress               = true

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    min_ttl     = 0
    default_ttl = 86400
    max_ttl     = 31536000
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  tags = {
    Name = "cloudfront-distribution-511fik"
  }
}

resource "aws_s3_bucket" "s3-bucket-vd94f0" {
  bucket = "media-assets-prod"

  tags = {
    Name        = "media-assets-prod"
  }
}

resource "aws_s3_bucket_public_access_block" "s3-bucket-vd94f0" {
  bucket = aws_s3_bucket.s3-bucket-vd94f0.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

