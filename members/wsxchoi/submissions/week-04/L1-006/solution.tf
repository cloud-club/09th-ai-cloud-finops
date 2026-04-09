provider "aws" {
  region = "us-east-1"
}

resource "aws_cloudwatch_log_group" "no_retention_ingestion_2gb" {
  count = 8
  name   = "no_retention_ingestion_2gb-${count.index}"
  retention_days = 90
}

resource "aws_cloudwatch_log_group" "retention_90d" {
  count = 2
  name   = "retention_90d-${count.index}"
  retention_days = 90
}