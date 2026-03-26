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

resource "aws_cloudwatch_log_group" "cloudwatch-log-group-lquayq" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-lquayq"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-l59umt" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-l59umt"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-0233lp" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-0233lp"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-ri6pi9" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-ri6pi9"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-m0uoex" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-m0uoex"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-wpx96a" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-wpx96a"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-vk0wh2" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-vk0wh2"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-6o6vqw" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-6o6vqw"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-0z2d1l" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-0z2d1l"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-75u81s" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-75u81s"
  }
}
