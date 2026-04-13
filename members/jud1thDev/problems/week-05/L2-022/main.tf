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

resource "aws_kinesis_stream" "kinesis-stream-q8fvfl" {
  shard_count = 20
  retention_period_hours = 24
  enhanced_fan_out = true
  processing_interval_minutes = 5

  tags = {
    Name = "kinesis-stream-q8fvfl"
  }
}
resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-3t8dm5" {
  consumer_type = "enhanced_fan_out"
  data_read_gb_per_day = 250

  tags = {
    Name = "kinesis-stream-consumer-3t8dm5"
  }
}
resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-gyo0os" {
  consumer_type = "enhanced_fan_out"
  data_read_gb_per_day = 250

  tags = {
    Name = "kinesis-stream-consumer-gyo0os"
  }
}
resource "aws_kinesis_stream" "kinesis-stream-2ay03s" {
  shard_count = 5
  retention_period_hours = 24
  enhanced_fan_out = false
  processing_interval_minutes = 1

  tags = {
    Name = "kinesis-stream-2ay03s"
  }
}
