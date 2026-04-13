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

resource "aws_kinesis_stream" "kinesis-stream-94cuew" {
  shard_count = 100
  stream_mode = "PROVISIONED"
  retention_hours = 24

  tags = {
    Name = "kinesis-stream-94cuew"
  }
}
resource "aws_kinesis_stream" "kinesis-stream-7yjhzg" {
  shard_count = 4
  stream_mode = "ON_DEMAND"
  retention_hours = 24

  tags = {
    Name = "kinesis-stream-7yjhzg"
  }
}
