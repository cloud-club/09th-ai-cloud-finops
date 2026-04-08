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

resource "aws_cloudwatch_log_group" "cloudwatch-log-group-msccth" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-msccth"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-wmiwlf" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-wmiwlf"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-gtlmk2" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-gtlmk2"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-a8zzzs" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-a8zzzs"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-zo3ew6" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-zo3ew6"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-pxlrbw" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-pxlrbw"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-jut1k5" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-jut1k5"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-xr904w" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-xr904w"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-tv4ha6" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-tv4ha6"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-xy0p7b" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-xy0p7b"
  }
}
