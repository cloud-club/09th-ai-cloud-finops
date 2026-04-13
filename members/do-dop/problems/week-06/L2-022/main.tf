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

resource "aws_kinesis_stream" "kinesis-stream-ptt5ao" {
  shard_count = 20
  retention_period_hours = 24
  enhanced_fan_out = true
  processing_interval_minutes = 5

  tags = {
    Name = "kinesis-stream-ptt5ao"
  }
}
resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-1ryu06" {
  consumer_type = "enhanced_fan_out"
  data_read_gb_per_day = 250

  tags = {
    Name = "kinesis-stream-consumer-1ryu06"
  }
}
resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-c7o0vr" {
  consumer_type = "enhanced_fan_out"
  data_read_gb_per_day = 250

  tags = {
    Name = "kinesis-stream-consumer-c7o0vr"
  }
}
resource "aws_kinesis_stream" "kinesis-stream-r0wzi5" {
  shard_count = 5
  retention_period_hours = 24
  enhanced_fan_out = false
  processing_interval_minutes = 1

  tags = {
    Name = "kinesis-stream-r0wzi5"
  }
}
