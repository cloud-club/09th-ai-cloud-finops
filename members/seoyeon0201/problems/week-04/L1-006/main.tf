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

resource "aws_cloudwatch_log_group" "cloudwatch-log-group-m6wzwu" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-m6wzwu"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-st1th7" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-st1th7"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-038snx" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-038snx"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-1j6b5j" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-1j6b5j"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-j8z4fd" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-j8z4fd"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-o21y7x" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-o21y7x"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-55dsf0" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-55dsf0"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-oxjwly" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-oxjwly"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-divcoj" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-divcoj"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-qscevb" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-qscevb"
  }
}
