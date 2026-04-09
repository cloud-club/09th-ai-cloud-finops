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

resource "aws_cloudwatch_log_group" "cloudwatch-log-group-vkdpur" {
  retention_days = 90
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-vkdpur"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-dip6g8" {
  retention_days = 90
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-dip6g8"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-9c697x" {
  retention_days = 90
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-9c697x"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-xu13se" {
  retention_days = 90
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-xu13se"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-rxdg2s" {
  retention_days = 90
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-rxdg2s"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-hsji1n" {
  retention_days = 90
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-hsji1n"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-39u153" {
  retention_days = 90
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-39u153"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-rlxdds" {
  retention_days = 90
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-rlxdds"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-hgjh2x" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-hgjh2x"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-tk29td" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-tk29td"
  }
}