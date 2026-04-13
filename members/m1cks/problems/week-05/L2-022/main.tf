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

resource "aws_kinesis_stream" "kinesis-stream-th5ftu" {
  shard_count = 20
  retention_period_hours = 24
  enhanced_fan_out = true
  processing_interval_minutes = 5

  tags = {
    Name = "kinesis-stream-th5ftu"
  }
}
resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-zcd0bk" {
  consumer_type = "enhanced_fan_out"
  data_read_gb_per_day = 250

  tags = {
    Name = "kinesis-stream-consumer-zcd0bk"
  }
}
resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-t865bp" {
  consumer_type = "enhanced_fan_out"
  data_read_gb_per_day = 250

  tags = {
    Name = "kinesis-stream-consumer-t865bp"
  }
}
resource "aws_kinesis_stream" "kinesis-stream-b0395y" {
  shard_count = 5
  retention_period_hours = 24
  enhanced_fan_out = false
  processing_interval_minutes = 1

  tags = {
    Name = "kinesis-stream-b0395y"
  }
}
