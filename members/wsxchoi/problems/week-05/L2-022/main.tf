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

resource "aws_kinesis_stream" "kinesis-stream-1obb8p" {
  shard_count = 20
  retention_period_hours = 24
  enhanced_fan_out = true
  processing_interval_minutes = 5

  tags = {
    Name = "kinesis-stream-1obb8p"
  }
}
resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-j1x6lv" {
  consumer_type = "enhanced_fan_out"
  data_read_gb_per_day = 250

  tags = {
    Name = "kinesis-stream-consumer-j1x6lv"
  }
}
resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-r5z1ge" {
  consumer_type = "enhanced_fan_out"
  data_read_gb_per_day = 250

  tags = {
    Name = "kinesis-stream-consumer-r5z1ge"
  }
}
resource "aws_kinesis_stream" "kinesis-stream-xt1v42" {
  shard_count = 5
  retention_period_hours = 24
  enhanced_fan_out = false
  processing_interval_minutes = 1

  tags = {
    Name = "kinesis-stream-xt1v42"
  }
}
