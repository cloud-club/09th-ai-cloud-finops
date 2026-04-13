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

resource "aws_kinesis_stream" "kinesis-stream-ecdd6i" {
  shard_count = 100
  stream_mode = "PROVISIONED"
  retention_hours = 24

  tags = {
    Name = "kinesis-stream-ecdd6i"
  }
}
resource "aws_kinesis_stream" "kinesis-stream-jy196h" {
  shard_count = 4
  stream_mode = "ON_DEMAND"
  retention_hours = 24

  tags = {
    Name = "kinesis-stream-jy196h"
  }
}
