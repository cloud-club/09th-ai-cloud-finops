// Optimized variant of main.tf for L2-018.
// First-stage Kinesis rightsizing: reduce the overprovisioned provisioned stream
// from 100 shards to 25 shards, then observe throughput/latency before further changes.

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

resource "aws_kinesis_stream" "kinesis-stream-tgw6vm" {
  shard_count     = 25
  stream_mode     = "PROVISIONED"
  retention_hours = 24

  tags = {
    Name = "kinesis-stream-tgw6vm"
  }
}

resource "aws_kinesis_stream" "kinesis-stream-pgjbjc" {
  shard_count     = 4
  stream_mode     = "ON_DEMAND"
  retention_hours = 24

  tags = {
    Name = "kinesis-stream-pgjbjc"
  }
}