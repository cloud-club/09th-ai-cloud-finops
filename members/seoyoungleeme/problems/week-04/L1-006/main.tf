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

resource "aws_cloudwatch_log_group" "cloudwatch-log-group-upz5kj" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-upz5kj"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-ct2yww" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-ct2yww"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-iy9ws4" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-iy9ws4"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-0tnecc" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-0tnecc"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-ur71ym" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-ur71ym"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-nlkcxf" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-nlkcxf"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-d3eyyn" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-d3eyyn"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-havj8r" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-havj8r"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-2rjgcu" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-2rjgcu"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-t4vfyn" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-t4vfyn"
  }
}
