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

resource "aws_s3_bucket_replication_configuration" "s3-bucket-replication-configuration-bt2e7k" {
  bucket = aws_s3_bucket.data-primary-us-east-1.id
  role   = aws_iam_role.s3-bucket-replication-configuration-bt2e7k_replication_role.arn

  rule {
    id     = "replication-rule"
    status = "Enabled"

    filter {}

    destination {
      bucket        = "arn:aws:s3:::data-dr-us-west-2"
      storage_class = "STANDARD"
    }
  }
}

resource "aws_s3_bucket_replication_configuration" "s3-bucket-replication-configuration-9k6jy3" {
  bucket = aws_s3_bucket.app-primary-us-east-1.id
  role   = aws_iam_role.s3-bucket-replication-configuration-9k6jy3_replication_role.arn

  rule {
    id     = "replication-rule"
    status = "Enabled"

    filter {
      prefix = "critical/"
    }

    destination {
      bucket        = "arn:aws:s3:::app-dr-us-west-2"
      storage_class = "STANDARD"
    }
  }
}

