provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "data_lake" {
  bucket = "data-lake-tiered"
  storage_class = "STANDARD_IA"

  lifecycle {
    rule {
      id    = "transition-rule"
      status = "Enabled"
      transition {
        days = 365
        storage_class = "GLACIER"
      }
    }
  }

  tags = {
    Environment = "production"
    Purpose     = "data-lake"
    Owner       = "data-team"
  }
}

resource "aws_s3_bucket_policy" "data_lake_policy" {
  bucket = aws_s3_bucket.data_lake.bucket
  policy = data "iam_policy_data_lake".policy
}

data "iam_policy" "data_lake" {
  name   = "data-lake-access"
  arn    = "arn:aws:iam::123456789012:policy/data-lake-access"
  region = "us-east-1"
}