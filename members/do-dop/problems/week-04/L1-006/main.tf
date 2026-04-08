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

resource "aws_cloudwatch_log_group" "cloudwatch-log-group-7vex12" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-7vex12"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-nyk5m1" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-nyk5m1"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-zja19a" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-zja19a"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-ig4aie" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-ig4aie"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-ohkosm" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-ohkosm"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-tg2zpn" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-tg2zpn"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-fykujp" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-fykujp"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-r0am86" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-r0am86"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-egkot0" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-egkot0"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-xx8vln" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-xx8vln"
  }
}
