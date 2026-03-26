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

resource "aws_cloudwatch_log_group" "cloudwatch-log-group-rl6bre" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-rl6bre"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-fwpj0n" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-fwpj0n"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-zkt71k" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-zkt71k"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-6ttbcf" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-6ttbcf"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-ocjoo9" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-ocjoo9"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-zicim4" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-zicim4"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-uhfjke" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-uhfjke"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-chxwzf" {
  retention_days = 0
  daily_ingestion_gb = 2

  tags = {
    Name = "cloudwatch-log-group-chxwzf"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-v7pr6p" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-v7pr6p"
  }
}
resource "aws_cloudwatch_log_group" "cloudwatch-log-group-i9ckem" {
  retention_days = 90

  tags = {
    Name = "cloudwatch-log-group-i9ckem"
  }
}
