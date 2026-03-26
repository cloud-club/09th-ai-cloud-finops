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

resource "aws_cloudwatch_log_group" "cloudwatch-log-group-12mh0q" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-12mh0q"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-0t1s3x" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-0t1s3x"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-ieetz3" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-ieetz3"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-rljka1" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-rljka1"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-354i83" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-354i83"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-wr5lwx" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-wr5lwx"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-s1exq0" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-s1exq0"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-tk157b" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-tk157b"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-w4yxfu" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-w4yxfu"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-uripa1" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-uripa1"
  }
}
